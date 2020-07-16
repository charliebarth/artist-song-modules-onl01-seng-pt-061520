require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end


  def artist=(artist)
    @artist = artist
  end

  
end
