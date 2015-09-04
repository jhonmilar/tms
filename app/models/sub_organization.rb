class SubOrganization < ActiveRecord::Base

  validates :domain_name, presence: true, uniqueness: { case_sensitive: false }

  belongs_to :organization
  has_many :routes

  accepts_nested_attributes_for :routes, reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true
end
