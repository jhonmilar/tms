class Route < ActiveRecord::Base

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates_uniqueness_of :name, :scope => :sub_organization_id

  belongs_to :sub_organization
  has_many :user_routes
  has_many :users, through: :user_routes
end
