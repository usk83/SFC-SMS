class Task < ActiveRecord::Base
  has_many :experience_tasks
  has_many :users, :through => :experience_tasks

  has_many :desired_tasks
  has_many :users, :through => :desired_tasks

  belongs_to :station

  has_many :task_shifts
  has_many :shift_times, :through => :task_shifts

  has_many :user_tasks
  has_many :users, :through => :user_tasks
end
