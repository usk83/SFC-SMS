class ActiveNight < ActiveRecord::Base
  belongs_to :user
  belongs_to :allnight
end
