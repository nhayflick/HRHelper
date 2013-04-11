class Employee < ActiveRecord::Base
  attr_accessible :supervisor_id, :name

  has_many :subordinates, :class_name => "Employee", :foreign_key => 'supervisor_id'
  belongs_to :supervisor, :class_name => "Employee"
  has_many :team_memberships
  has_many :teams, :through => :team_memberships

  validates :name, :presence => true
end