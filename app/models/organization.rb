class Organization < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :url, presence: true, uniqueness: { case_sensitive: false }

  has_
end
