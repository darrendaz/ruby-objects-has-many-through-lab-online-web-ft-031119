class Genre
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all {|s| s.genre == self}
    end

    def artists
        songs.map(&:artist)
    end

    def add_song(song)
        songs << song
    end
end