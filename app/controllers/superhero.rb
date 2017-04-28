class SuperHero

  attr_accessor :name, :power, :bio

  ALL = []

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    ALL << self
  end

  def self.all() ALL end

end
