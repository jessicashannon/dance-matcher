class Matcher

  def initialize(host, guests_array)
    @host = host
    @guests = guests_array
  end

  def match
    solution = Solution.new
    solution.host = @host
    solution.guests = []
    @guests.each do |guest|
      @guest = guest
      if compatible_pair?
        solution.guests << @guest
      end
    end
    solution
  end

  def compatible_pair?
    smokes_match? && pets_match? && bedding_match? && towels_match?
  end

  def smokes_match?
    if @host.smokes == 'Yes' && @guest.smokes == 'Yes'
      true
    elsif @host.smokes == 'Yes' && @guest.smokes == "easygoing"
      true
    elsif @host.smokes == 'easygoing' && @guest.smokes == 'Yes'
      true
    elsif @host.smokes == 'No' && @guest.smokes == "No"
      true
    else
      false
    end
  end

  def pets_match?
    if @host.dogs == "Yes" && @guest.dogs == "Yes"
      true
    elsif @host.dogs == "No" && @guest.dogs == "No"
      true
    elsif @host.cats == "Yes" && @guest.cats == "Yes"
      true
    elsif @host.cats == "No" && @guest.cats == "No"
      true
    else
      false
    end
  end

  def bedding_match?
    if @host.bedding == "Yes" && @guest.bedding == "Yes"
      true
    elsif @host.bedding == "No" && @guest.bedding == "No"
      true
    elsif @host.bedding == "Yes" && @guest.bedding == "Yes"
      true
    elsif @host.bedding == "No" && @guest.bedding == "No"
      true
    else
      false
    end
  end

  def towels_match?
    if @host.towels == "Yes" && @guest.towels == "Yes"
      true
    elsif @host.towels == "No" && @guest.towels == "No"
      true
    elsif @host.towels == "Yes" && @guest.towels == "Yes"
      true
    elsif @host.towels == "No" && @guest.towels == "No"
      true
    else
      false
    end
  end

end
