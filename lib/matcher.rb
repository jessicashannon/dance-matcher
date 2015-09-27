module Matcher
  
  def compatible_pair?(host, guest)
    smokes_match?(host,guest) &&
    pets_match?(host,guest) &&
    bedding_match?(host,guest) &&
    towels_match?(host,guest)
  end

  def smokes_match?(host, guest)
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

  def pets_match?(host, guest)
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

  def bedding_match?(host, guest)
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

  def towels_match?(host,guest)
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
