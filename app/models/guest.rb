class Guest < ActiveRecord::Base
has_many :arrangements
has_many :hosts, through: :arrangements
belongs_to :user

  def self.unmatched
    Guest.all.to_a-Arrangement.guests
  end

end
