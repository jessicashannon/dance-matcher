class Arrangement < ActiveRecord::Base
has_many :matches
has_many :guests, through: :matches
has_many :hosts, through: :matches









end
