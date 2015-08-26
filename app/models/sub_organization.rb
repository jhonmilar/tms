class SubOrganization < ActiveRecord::Base

  validates :domain_name, presence: true, uniqueness: { case_sensitive: false }

end
