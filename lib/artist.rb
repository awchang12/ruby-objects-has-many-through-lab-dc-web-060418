class Artist
    attr_accessor :name, :songs, :genres

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song|song.artist == self}
    end

    def genres
        Song.all.collect do |song|
            song.genre
        end
    end

end