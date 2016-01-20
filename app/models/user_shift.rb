class UserShift < ActiveRecord::Base
  belongs_to :user
  belongs_to :task_shift
end
