require('minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms' )
require_relative( '../guests' )
require_relative( '../songs' )
require_relative( '../caraoke' )

class TestRooms < MiniTest::Test

    def setup

        @song1 = Song.new("Jolene", "Dolly Parton", "Country and Western")
        @song2 = Song.new("Witicha Lineman", "Glen Campbell", "Country and Western")
        @song3 = Song.new("Take me home, country road", "John Denver", "Country and Western")
        
        @song4 = Song.new("The Gambler", "Kenny Rogers", "Country and Western")
        @song5 = Song.new("Islands in the stream", "Dolly Parton", "Country and Western")
        @song6 = Song.new("Crazy", "Patsy Cline", "Country and Western")

        @room1 = Room.new("Daves Room")
        @room2 = Room.new("Kirstys Room")
        @room3 = Room.new("Ethans Room")
    
        @caraoke = Caraoke.new("CCCs Caraoke Club")
    
        @guest1 = Guest.new("Tam", "Jolene")
        @guest2 = Guest.new("Sam", "Witicha Lineman")
        @guest3 = Guest.new("Ben", "Take me home, country road")

        @guest4 = Guest.new("Don", "Jolene")
        @guest5 = Guest.new("Ron", "Witicha Lineman")
        @guest6 = Guest.new("Sonny", "Take me home, country road")

        @guest7 = Guest.new("Bill", "Jolene")
        @guest8 = Guest.new("William", "Witicha Lineman")
        @guest9 = Guest.new("Shuggie", "Take me home, country road")


    end

    def test_room_name
        assert_equal("Daves Room", @room1.name())
    end
    
    def test_add_guest_to_room__one
        @room1.add_guest_to_room(@guest1)
        assert_equal(1, @room1.check_guest_count())
    end

    def test_add_guest_to_room__many
        @room1.add_guest_to_room(@guest1)
        @room1.add_guest_to_room(@guest2)
        @room1.add_guest_to_room(@guest3)
        assert_equal(3, @room1.check_guest_count())
    end

    def test_room_playlist_empty
        assert_equal([], @room1.room_playlist)
    end

    def test_room_playlist_is_not_empty
        @room1.add_song_to_room_playlist(@song1)
        assert_equal(1, @room1.room_playlist.count())
    end

    def test_room_playlist_has_three_songs
        @room1.add_song_to_room_playlist(@song1)
        @room1.add_song_to_room_playlist(@song2)
        @room1.add_song_to_room_playlist(@song3)
        assert_equal(3, @room1.room_playlist.count())
    end

    def test_check_in_guest_to_room__empty
        assert_equal([], @room1.guests)
    end

    def test_check_in_guest_to_room__one
        @room1.add_guest_to_room(@guest1)
        assert_equal(1, @room1.guests.count())
    end

    def test_check_in_guests_to_room__two
        @room1.add_guest_to_room(@guest1)
        @room1.add_guest_to_room(@guest2)
        assert_equal(2, @room1.guests.count())
    end

    def test_check_room_max_number_of_occupants__not_full
        assert_equal(false, @room1.check_room_too_full?)
    end

    def test_check_in_guest_to_room__full
        @room1.add_guest_to_room(@guest1)
        @room1.add_guest_to_room(@guest2)
        @room1.add_guest_to_room(@guest3)
        @room1.add_guest_to_room(@guest4)
        @room1.add_guest_to_room(@guest5)
        @room1.add_guest_to_room(@guest6)
        assert_equal(true, @room1.check_room_too_full?)
    end

    def test_check_if_room_full_no_more_guests_allowed
        @room1.add_guest_to_room(@guest1)
        @room1.add_guest_to_room(@guest2)
        @room1.add_guest_to_room(@guest3)
        @room1.add_guest_to_room(@guest4)
        @room1.add_guest_to_room(@guest5)
        assert_equal(4, @room1.guests.count())
    end

    def test_guest_leaves_room
        @room1.add_guest_to_room(@guest1)
        @room1.add_guest_to_room(@guest2)
        @room1.add_guest_to_room(@guest3)
        @room1.add_guest_to_room(@guest4)
        @room1.guest_leaves_room(@guest2)
        assert_equal(3, @room1.guests.count)
    end



end