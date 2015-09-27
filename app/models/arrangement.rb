class Arrangement < ActiveRecord::Base
include Matcher
has_many :match_arrangements
has_many :matches, through: :match_arrangements
has_many :guests, through: :matches
has_many :hosts, through: :matches
validates_uniqueness_of :guests, :hosts # May cause horrible errors
after_create :find_matches


  private

  def find_matches
    potential_guests = Guest.all
    Host.all.each do |host|
      host.capacity.times do
        random_match = host.matches.sample
        self.match_arrangements.create(match: random_match)
      end
    end
  end

end
