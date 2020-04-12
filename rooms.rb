class Room

    attr_reader :name, :guests, :room_playlist

    def initialize(name)
        @name = name
        @guests = []
        @room_playlist = []
        
    end

    def add_guest_to_room(guest)
        @guests.push(guest)
    end

    def check_guest_count
       return @guests.count
    end

    def add_song_to_room_playlist(song)
        @room_playlist.push(song)
    end

    def check_room_max_number_of_occupants
        return false if @guests.count <=3
    end



end

