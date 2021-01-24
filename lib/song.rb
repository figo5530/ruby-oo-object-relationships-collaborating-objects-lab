class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        f = filename.split(" - ")
        song = self.new(f[1])
        song.artist_name = f[0]
        song
    end

    def artist_name=(artist_name)
        @artist =  Artist.find_or_create_by_name(artist_name)
    end
end