class MatchArrangement < ActiveRecord::Base
  belongs_to :match
  has_many :guests, through: :matches
  has_many :hosts, through: :matches
  belongs_to :arrangements
end
