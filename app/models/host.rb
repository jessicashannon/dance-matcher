class Host < ActiveRecord::Base
has_many :arrangements
has_many :guests, through: :arrangements
belongs_to :user

def self.capacity
  capacity = 0
  all.each do |host|
    capacity += host.capacity
  end
  capacity
end

end
