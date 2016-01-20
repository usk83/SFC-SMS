class TaskShift < ActiveRecord::Base
  belongs_to :task
  belongs_to :shift_time

  has_many :user_shifts
  has_many :users, :through => :user_shifts
end
