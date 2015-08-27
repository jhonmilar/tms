class SubOrganization < ActiveRecord::Base

  validates :domain_name, presence: true, uniqueness: { case_sensitive: false }

  belongs_to :organization
  has_many :routes
end
