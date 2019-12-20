class Owner
  
  attr_accessor :dog, :cat
  
  attr_reader :name, :species
  
  @@all = []
  @@cat_array = []
  @@dog_array = []
  
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
    Cat.all.each do |name, mood, owner, species|
      if owner == self
        @@cat_array << name
      end 
    end
  end
  
end