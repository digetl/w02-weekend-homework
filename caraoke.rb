class Caraoke

    attr_reader :name, :rooms

    def initialize(name)
        @name = name
        @rooms = []
    
    end

    def add_room_to_club(room)
        @rooms.push(room)
    end

    def check_room_count
       return @rooms.count
    end

end
