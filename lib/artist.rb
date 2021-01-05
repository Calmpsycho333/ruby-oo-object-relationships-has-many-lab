require 'pry' 
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    
        
    end

    def add_song(song)
        @song = song
       song.artist = self
        
        
      
      end

      def  add_song_by_name(new_song)
       
        song = Song.new(new_song)
        song.artist = self
        #binding.pry
      end

     def self.song_count
        Song.all.count 
    #binding.pry
     end

    def songs
        Song.all.select do |song|
            song.artist == self

            #binding.pry
        end
    end
end