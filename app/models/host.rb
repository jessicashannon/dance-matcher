class Host < ActiveRecord::Base
  has_many :days
  has_many :guests, through: :days
end
