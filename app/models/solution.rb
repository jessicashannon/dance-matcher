class Solution
  attr_accessor :guests, :host

  @@solutions = []

  def initialize
    @@solutions << self
  end

  def self.all
    @@solutions
  end

  def self.any?
    !!@@solutions
  end

end
