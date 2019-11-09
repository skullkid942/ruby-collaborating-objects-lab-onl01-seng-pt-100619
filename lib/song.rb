class Song 

  attr_accessor :name 
  
  @@all =[]
  
  def initialize(name)
    @name = name
  end 
  
  def new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song.artist = filename.split("-")[2]
    song
  end
  
  def artist_name
    
  end

end