class UserRoute < ActiveRecord::Base

  validates_uniqueness_of :user_id, :scope => :route_id
end
