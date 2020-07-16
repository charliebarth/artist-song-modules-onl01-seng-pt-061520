require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods
  include Paramable

  @@all = []

  def initialize
    @@all << self
    @songs = []
  end
  
  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  
  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
end
