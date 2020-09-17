require 'pry'

class Owner
      # code goes here

      attr_reader :name, :species
      @@all = [] 

    def initialize(name,species = "human")
      @name = name 
      @@all << self
      @species = species
    end 

    def self.all
      @@all
    end

    def say_species
      return "I am a #{species}."
    end

    def self.count
     self.all.count  
    end

    def self.reset_all
      self.all.clear
    end

    def cats 
      Cat.all.filter {|animals| animals.owner == self}
    end

    def dogs 
      Dog.all.filter {|animals| animals.owner == self}
    end 

    def buy_cat(name)
      new_cat = Cat.new(name, self)

    end

      def buy_dog(name)
        new_dog = Dog.new(name, self)
      end

      def walk_dogs
        dogs.each {|dogs| dogs.mood = "happy"}
      end 

      def feed_cats
        cats.each {|cats| cats.mood = "happy"}
      end 
      # At this point it felt DRY but it was working. 

      def sell_pets
        pets = cats + dogs 
        pets.each {|pets| pets.mood = "nervous"}
        pets.each {|pets| pets.owner = nil }
      end

      def list_pets
        "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      end

end