class Arrangement < ActiveRecord::Base
has_many :match_arrangements
has_many :matches, through: :match_arrangements
has_many :guests, through: :matches
has_many :hosts, through: :matches
after_create :find_matches


private

def find_matches
  potential_guests = []
  Guest.all.map{|guest| potential_guests << guest.name}
  Host.all.each do |host|
    host.capacity.times do
      random_match = host.matches.sample
      if potential_guests.include?(random_match.guest.name)
        self.match_arrangements.create(match: random_match)
      end
      potential_guests.delete(random_match.guest.name)
    end
  end
  puts "I finished!"
end

end
