class Cat

  @@all = []

  attr_reader :name 
  attr_accessor :mood, :owner

  def initialize(name, owner, mood = "nervous")
    @name = name 
    @mood = mood
    @owner = owner 
    save 
  end 

  def owner 
    @owner 
  end 

  def name 
    @name 
  end 

  def mood 
    @mood 
  end 

  def save 
    @@all << self 
  end 

  def self.all
    @@all
  end 
end