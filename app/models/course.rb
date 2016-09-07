class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :city, presence: true
end
