class Genre 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
 
  
  def songs 
  Song.all.select {|song| song.genre == self}
  end
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end
  
  def artists
    self.songs.collect do |song|    #=> classes talk to each other
      song.artist
    end
    end
    
end