class Artist 

  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = [] 
  end 

  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self
    song 
  end
  
  def self.songs 
    @songs 
  end
  
  def find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def print_songs
    
  end

end