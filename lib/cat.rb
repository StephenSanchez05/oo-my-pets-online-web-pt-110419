class Cat
  
  attr_accessor :owner, :mood
  
  attr_reader  :name
  
  @@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def owner
    @owner
  end
  
  def happy
    @mood = "happy"
  end
  
  def nervous
    @mood = "nervous"
  end
  
  
end