class Guest < ActiveRecord::Base
  include Matcher
  has_many :matches
  has_many :hosts, through: :matches
  before_save :create_matches




private

  def create_matches
    Host.all.each do |host|
      if compatible_pair?(host,self)
        Match.new(guest: self, host: host)
      end
    end
  end

end
