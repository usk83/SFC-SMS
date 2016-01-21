class UserShift < ActiveRecord::Base
  belongs_to :user
  belongs_to :task_shift

  attr_accessor :assigned
end
