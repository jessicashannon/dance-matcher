class Guest < ActiveRecord::Base
  has_many :days
  has_many :hosts, through: :days
  
end
