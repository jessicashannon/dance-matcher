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
      if compatible?(@host, guest)
        solution.guests << guest
      end
    end
    solution
  end

  def compatible?(h, g)
    smoking_match?(h, g) && pets_match(h, g) && bedding_match(h, g) && towels_match(h, g)
  end

  def smoking_match?(host, guest)
    if host.smokes == 'Yes' && guest.smoking == 'Yes'
      true
    elsif host.smokes == 'Yes' && guest.smoking == "easygoing"
      true
    elsif host.smokes == 'easygoing' && guest.smoking == 'Yes'
      true
    elsif host.smokes == 'No' && guest.smoking == "No"
      true
    else
      false
    end
  end

  def pets_match?
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

  def bedding_match?
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

  def towels_match?
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
