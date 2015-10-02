class Host < ActiveRecord::Base
has_many :guests, through: :arrangements
end
