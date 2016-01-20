class ShiftTime < ActiveRecord::Base
  has_many :active_times
  has_many :users, :through => :active_times

  has_many :task_shifts
  has_many :tasks, :through => :task_shifts
end
