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




end

