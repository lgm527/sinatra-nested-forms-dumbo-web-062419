class Ship < Sinatra::Base

  attr_accessor :name, :type, :booty, :pirate

  @@all = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
