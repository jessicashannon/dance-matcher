class Guest < ActiveRecord::Base
has_many :hosts, through: :arrangements


end
