class Owner
  attr_reader :name, :species

    @@all = []
    @@pets = {:dogs => [], :cats => []}

  def initialize(name, species = "human")
    @name = name 
    @species = species
    save 
  end 

  def name 
    @name 
  end 

  def species 
    @species 
  end 

  def say_species
    return "I am a #{@species}."
  end 

  def save 
    @@all << self
  end 

  def self.all
    @@all
  end 

  def self.count 
    @@all.length
  end 

  def self.reset_all
    @@all.clear
  end 

  def pets 
    @@pets 
  end 

  def cats 
    @@pets[:cats]
  end 

  def dogs
    @@pets[:dogs]
  end 

  def buy_cat(cat)
    @@pets[:cats << Cat.new(cat)]
  end 

  def buy_dog(dog)
    @@pets[:dog << Dog.new(dog)]
  end 

  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end 
  end 

  def feed_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end 
  end 

  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = 'nervous'
      end
      arr.clear
    end
  end 

  def list_pets
    "I have#{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end

