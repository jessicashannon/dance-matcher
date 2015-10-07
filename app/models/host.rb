class Host < ActiveRecord::Base
belongs_to :user
has_many :arrangements
has_many :guests, through: :arrangements

def self.capacity
  capacity = 0
  all.each do |host|
    capacity += host.capacity
  end
  capacity
end

end
