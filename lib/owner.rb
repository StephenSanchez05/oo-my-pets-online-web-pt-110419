class Owner
  
  attr_accessor :dog, :cat
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def save
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    array = []
    Cat.all.each do |cat|
      if cat.owner == self
        array << cat
      end
    end
    array
  end
  
    def dogs
    array = []
    Dog.all.each do |cat|
      if cat.owner == self
        array << cat
      end
    end
    array
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
end