class Dog
  # code goes here
  
  attr_reader :name #if you can not change 
  attr_accessor :owner, :mood # can change 
  
  @@all = [] #to hold an instance
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood 
    @@all << self
  end

  def self.all 
    @@all
  end


end