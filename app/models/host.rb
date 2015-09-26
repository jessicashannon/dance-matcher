class Host < ActiveRecord::Base
  include Matcher
  # has_many :days
  # has_many :guests, through: :days
  has_many :matches
  has_many :guests, through: :matches

  before_save :create_matches


  private

  def create_matches
    Guest.all.each do |guest|
      if compatible_pair?(self,guest)
        Match.new(guest: guest, host: self)
      end
    end
  end



end
