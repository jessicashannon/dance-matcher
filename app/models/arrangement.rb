class Arrangement < ActiveRecord::Base
belongs_to :host
belongs_to :guest


def self.make
  Arrangement.delete_all
  guest_array = Guest.all.to_a
  host_array = Host.all.to_a
  leftover_guests = guest_array
  host_array.each do |host|
    guest_array.each do |guest|
      if is_compatible?(host,guest) && (host.capacity > Arrangement.where(host_id: host.id).count) &&
        leftover_guests.include?(guest)
          @arrangement = Arrangement.create
          @arrangement.host = host
          @arrangement.guest = guest
          @arrangement.save
          leftover_guests.delete(guest)
      end
    end
  end
end

def self.guests
  guests = []
  self.all.each do |arrangement|
    guests << arrangement.guest
  end
  guests
end

def self.hosts
  hosts = []
  Arrangement.all.each do |arrangement|
    hosts << arrangement.host
  end
  hosts
end

def self.is_compatible?(host, guest)
  smokes_match?(host,guest) &&
  pets_match?(host,guest) &&
  bedding_match?(host,guest) &&
  towels_match?(host,guest)
end

def self.smokes_match?(host, guest)
  if host.smokes == 'Yes' && guest.smokes == 'Yes'
    true
  elsif host.smokes == 'Yes' && guest.smokes == "easygoing"
    true
  elsif host.smokes == 'easygoing' && guest.smokes == 'Yes'
    true
  elsif host.smokes == 'No' && guest.smokes == "No"
    true
  else
    false
  end
end

def self.pets_match?(host, guest)
  if host.dogs == "Yes" && guest.dogs == "Yes"
    true
  elsif host.dogs == "No" && guest.dogs == "No"
    true
  elsif host.cats == "Yes" && guest.cats == "Yes"
    true
  elsif host.cats == "No" && guest.cats == "No"
    true
  else
    false
  end
end

def self.bedding_match?(host, guest)
  if host.bedding == "Yes" && guest.bedding == "Yes"
    true
  elsif host.bedding == "No" && guest.bedding == "No"
    true
  elsif host.bedding == "Yes" && guest.bedding == "Yes"
    true
  elsif host.bedding == "No" && guest.bedding == "No"
    true
  else
    false
  end
end

def self.towels_match?(host,guest)
  if host.towels == "Yes" && guest.towels == "Yes"
    true
  elsif host.towels == "No" && guest.towels == "No"
    true
  elsif host.towels == "Yes" && guest.towels == "Yes"
    true
  elsif host.towels == "No" && guest.towels == "No"
    true
  else
    false
  end
end

end
