class Guest < ActiveRecord::Base
has_many :arrangements
has_many :hosts, through: :arrangements
belongs_to :user

end
