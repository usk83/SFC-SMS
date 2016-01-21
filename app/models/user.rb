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

  has_many :experience_tasks
  has_many :tasks, :through => :experience_tasks

  has_many :desired_tasks
  has_many :tasks, :through => :desired_tasks

  has_many :active_times
  has_many :shift_times, :through => :active_times

  has_many :active_nights
  has_many :allnights, :through => :active_nights

  has_many :user_shifts
  has_many :task_shifts, :through => :user_shifts

  has_many :user_tasks
  has_many :tasks, :through => :user_tasks
end
