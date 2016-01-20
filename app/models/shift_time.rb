class ShiftTime < ActiveRecord::Base
  has_many :active_times
  has_many :users, :through => :active_times

  has_many :task_shifts
  has_many :tasks, :through => :task_shifts

  def shift_datetime
      self.shift_date.strftime("%Y/%m/%d") + ' ' + self.shift_time.strftime("%H:%M:%S")
  end
end
