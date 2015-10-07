class Arrangement < ActiveRecord::Base
belongs_to :host
belongs_to :guest

  def self.make_needy_matches_first # Take a random pass at matching needy guests
    guest_array = needy_guests.shuffle
    host_array = Host.all.to_a.shuffle
    @leftover_guests = guest_array
    host_array.each do |host|
      guest_array.each do |guest|
        if match?(host, guest)
          Arrangement.create(host: host, guest: guest)
          @leftover_guests.delete(guest)
        end
      end
    end
  end

  def self.needy?(person)
    person.smokes == true ||
    person.dogs == true ||
    person.cats == true ||
    person.bedding == false ||
    person.towels == false
  end

  def self.needy_guests
    needy = []
    Guest.all.each do |guest|
      if needy?(guest)
        needy << guest
      end
    end
    needy
  end
  #
  # def needy_host?
  #   needy = []
  #   Host.all.each do |host|
  #     if needy?(host)
  #       needy << host
  #     end
  #   end
  #   needy
  # end

  def self.make
    reset
    counter = 1
    until Arrangement.all.count == needy_guests.count || counter == 1000
      make_needy_matches_first
      counter += 1
    end
    guest_array = Guest.all - needy_guests
    host_array = Host.all.to_a.shuffle
    @leftover_guests = guest_array
    host_array.each do |host|
      guest_array.each do |guest|
        if match?(host, guest)
            Arrangement.create(host: host, guest: guest)
            @leftover_guests.delete(guest)
        end
      end
    end
  end

  def self.reset # Clear any previous arrangements.
    Arrangement.delete_all
  end

  def self.guests # Helper method for view: all the guests
    guests = []
    self.all.each do |arrangement|
      guests << arrangement.guest
    end
    guests
  end

  def self.hosts # Helper method for view: all the hosts
    hosts = []
    Arrangement.all.each do |arrangement|
      hosts << arrangement.host
    end
    hosts
  end

  def self.match?(host,guest) # They are both compatible and available
    is_compatible?(host,guest) &&
    (host.capacity > host.guests.count) &&
    @leftover_guests.include?(guest)
  end

  def self.is_compatible?(host, guest)
    smokes_match?(host,guest) &&
    pets_match?(host,guest) &&
    bedding_match?(host,guest) &&
    towels_match?(host,guest)
  end

  def self.smokes_match?(host, guest) #Either they both smoke, or neither does
    if host.smokes == guest.smokes
      true
    else
      false
    end
  end

  def self.pets_match?(host, guest) #True unless host HAS pet & guest IS allergic
    if host.dogs && guest.dogs || host.cats && guest.cats
      false
    else
      true
    end
  end

  def self.bedding_match?(host, guest) #At least one of them has bedding
    if host.bedding || guest.bedding
      true
    else
      false
    end
  end

  def self.towels_match?(host,guest) #At least one of them has a towel
    if host.towels || guest.towels
      true
    else
      false
    end
  end

end
