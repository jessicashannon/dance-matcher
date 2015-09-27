class Match < ActiveRecord::Base
  include Matcher
  belongs_to :host, dependent: :destroy
  belongs_to :guest, dependent: :destroy
  has_many :match_arrangements
  has_many :arrangements, through: :match_arrangements



  def update
    Guest.all.each do |guest|
      Host.all.each do |host|
        if compatible_pair?(host, guest)
          Match.create(host: host, guest: guest)
        end
      end
    end
  end

end
