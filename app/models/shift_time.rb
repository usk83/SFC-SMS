class ShiftTime < ActiveRecord::Base
  has_many :active_times
  has_many :users, :through => :active_times
end
