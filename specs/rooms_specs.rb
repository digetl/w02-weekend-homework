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

        @room1 = Room.new("Daves Room")
        @room2 = Room.new("Kirstys Room")
        @room3 = Room.new("Ethans Room")
    
        @caraoke = Caraoke.new("CCCs Caraoke Club", @room2)
    
        @guest1 = Guest.new("Tam", "Jolene")
        @guest2 = Guest.new("Sam", "Witicha Lineman")
        @guest3 = Guest.new("Ben", "Take me home, country road")
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





end