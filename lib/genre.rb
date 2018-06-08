class Genre
    attr_accessor :name, :songs, :artist

    def initialize(name)
        self.name = name
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        Song.all.collect do |song|
            song.artist
        end  
    end



end