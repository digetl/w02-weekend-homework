class Room

    attr_reader :name, :guests, :room_playlist

    def initialize(name)
        @name = name
        @guests = []
        @room_playlist = []
        
    end

    def add_guest_to_room(guest)
        return if check_room_too_full?()
        p "Welcome guest"
        @guests.push(guest)
     
    end

    def check_guest_count
       return @guests.count
    end

    def add_song_to_room_playlist(song)
        @room_playlist.push(song)
    end

    def check_room_too_full?()
        return false if @guests.count <=3
        return true if @guests.count >=4
    end

    def guest_leaves_room(guest)
        @guests.delete(guest)
    end

    def check_if_guest_can_pay_fee(guest)
        return true if guest.wallet >10
    end




end

