class Organization < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :url, presence: true, uniqueness: { case_sensitive: false }
  has_many :sub_organizations, dependent: :destroy

  after_create :create_sub_organization
  accepts_nested_attributes_for :sub_organizations, reject_if: proc { |attributes| attributes['domain_name'].blank? },
                                                    allow_destroy: true

  private
    def create_sub_organization
      sub_organizations.create(domain_name: self.name)
    end
end
