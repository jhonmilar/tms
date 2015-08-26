class Organization < ActiveRecord::Base
  has_many :sub_organizations
end
