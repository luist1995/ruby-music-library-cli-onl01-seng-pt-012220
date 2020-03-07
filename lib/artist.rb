class Artist 

  attr_accessor :name, :song 
  @@all =[]
  
  def initialize(name)
    @name = name
    @song = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    new_artist = Artist.new(name)
    new_artist
  end


end