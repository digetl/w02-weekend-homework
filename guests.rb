class Guest

    attr_reader :name, :fave_song, :wallet

    def initialize(name, fave_song)
        @name = name
        @fave_song = fave_song
        @wallet = 0
    end

    def add_money_to_guests_wallet(money)
        @wallet += money
    end

   


end
