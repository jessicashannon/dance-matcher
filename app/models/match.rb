class Match < ActiveRecord::Base
  belongs_to :host
  belongs_to :guest
  has_many :match_arrangements
  has_many :arrangements, through: :match_arrangements

end
