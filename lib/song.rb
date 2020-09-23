require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
