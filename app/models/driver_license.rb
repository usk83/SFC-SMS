class DriverLicense < ActiveRecord::Base
  has_many :users
end
