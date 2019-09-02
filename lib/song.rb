class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song   
  end 
  
  def self.new_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name
    new_song
  end 
  
  def self.create_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name 
    @@all << new_song 
    new_song
  end 
  
  def self.find_by_name(song_name) 
    @@all.find {|song| song.name == song_name}
  end 
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end 
  
  def self.alphabetical
    @@all.sort_by {|word| word.name}
  end
  
  def self.new_from_filename(file_name)
    song_and_artist = file_name.split("-")
    
  end 
  
end

