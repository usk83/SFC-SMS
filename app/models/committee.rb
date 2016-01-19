class Committee < ActiveRecord::Base
  has_many :affiliations
  has_many :users, :through => :affiliations
  has_many :stations
end
