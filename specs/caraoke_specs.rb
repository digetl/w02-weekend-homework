require('minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms' )
require_relative( '../guests' )
require_relative( '../songs' )
require_relative( '../caraoke' )

class TestCaraoke < MiniTest::Test

    def setup

        @song1 = Song.new("Jolene", "Dolly Parton", "Country and Western")
        @song2 = Song.new("Witicha Lineman", "Glen Campbell", "Country and Western")
        @song3 = Song.new("Take me home, country road", "John Denver", "Country and Western")

        @room1 = Room.new("Daves Room")
        @room2 = Room.new("Kirstys Room")
        @room3 = Room.new("Ethans Room")
    
        @caraoke = Caraoke.new("CCCs Caraoke Club")
    
        @guest1 = Guest.new("Tam", "Jolene")
        @guest2 = Guest.new("Sam", "Witicha Lineman")
        @guest3 = Guest.new("Ben", "Take me home, country road")

    end

    def test_caraoke_name
        assert_equal("CCCs Caraoke Club", @caraoke.name())
    end

    def test_add_room_to_club__one
        @caraoke.add_room_to_club(@room1)
        assert_equal(1, @caraoke.check_room_count())
    end


end