class ActiveTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :shift_time
end
