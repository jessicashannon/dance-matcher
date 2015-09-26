class Guest < ActiveRecord::Base
  include Matcher
  has_many :matches
  has_many :hosts, through: :matches
  after_create :create_matches


private

  # def create_matches
  #   host = Host.first
  #   self.hosts << host
  #   host.guests << self
  # end

  def create_matches
    Host.all.each do |host|
      if compatible_pair?(host,self)
        Match.create(guest: self, host: host)
      end
    end
  end

end
