class EmployeeProfile < ActiveRecord::Base
  attr_accessible :age, :date_of_birth, :favorite_day, :favorite_food, :height, :salary
 
  belongs_to :employee

  validates :favorite_day, :inclusion => {:in => Date::DAYNAMES}
end
