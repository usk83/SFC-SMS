class Allnight < ActiveRecord::Base
  has_many :active_nights
  has_many :users, :through => :active_nights
end
