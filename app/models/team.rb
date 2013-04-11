class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids

  has_many :memberships, :class_name => 'TeamMembership'
  has_many :members, :through => :memberships, :source => :employee
  belongs_to :supervisor, :class_name => 'Employee'

  validates :name, :presence => true
end