class Organization < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :url, presence: true, uniqueness: { case_sensitive: false }
  has_many :sub_organizations

  after_create :create_sub_organization


  private
    def create_sub_organization
      sub_organizations.create(domain_name: self.name)
    end
end
