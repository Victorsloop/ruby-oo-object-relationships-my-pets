class Cat
  # code goes heref

  attr_reader :name #can not change 
  attr_accessor :owner, :mood #can change 
  
  @@all = [] 

  def initialize(name, owner, mood = "nervous")
    @name = name 
    @owner = owner 
    @mood = mood
    @@all << self 
  end 

  def self.all #part 3 first class method
    @@all
  end

end