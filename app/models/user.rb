class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :affiliations
  has_many :committees, :through => :affiliations

  belongs_to :driver_license

  has_many :user_stations
  has_many :stations, :through => :user_stations
end
