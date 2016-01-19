class Task < ActiveRecord::Base
  has_many :responsible_tasks
  has_many :users, :through => :responsible_tasks

  has_many :experience_tasks
  has_many :users, :through => :experience_tasks

  has_many :desired_tasks
  has_many :users, :through => :desired_tasks

  belongs_to :station
end
