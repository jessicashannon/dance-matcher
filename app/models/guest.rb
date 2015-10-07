class Guest < ActiveRecord::Base
belongs_to :user
has_many :arrangements
has_many :hosts, through: :arrangements

end
