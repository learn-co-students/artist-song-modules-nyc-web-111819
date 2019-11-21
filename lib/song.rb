require_relative '../lib/concerns/memorable'
require 'pry'

class Song
  include Paramble
  extend Memorable
  attr_accessor :name
  attr_reader :artist

  SONGS = []

  def initialize
    SONGS << self
  end

  def self.find_by_name(name)
    SONGS.detect{|a| a.name == name}
  end

  def self.all
    SONGS
  end

  def artist=(artist)
    @artist = artist
  end
end
