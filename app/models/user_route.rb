class UserRoute < ActiveRecord::Base

  validates :user_id, uniqueness: {scope: :route_id}
end
