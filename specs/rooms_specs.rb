require('minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms' )
require_relative( '../guests' )
require_relative( '../songs' )
require_relative( '../caraoke' )

class TestRooms < MiniTest::Test

    def setup

        song1 = {title: "Jolene", artist: "Dolly Parton", genre: "Country and Western"}
        song2 = {title: "Take me home, country road", artist: "John Denver", genre: "Country and Western"}
        song3 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song4 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song5 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song6 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song7 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song8 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song9 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song10 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song11 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}
        song12 = {title: "Witicha Lineman", artist: "Glen Campbell", genre: "Country and Western"}


        song_list1 = [song1, song2, song3]
        song_list2 = [song4, song5, song6]
        song_list3 = [song7, song8, song9]
        song_list4 = [song10, song11, song12]

        rooms_singular = [@room1]
        rooms_many = [@room1, @room2]

        @caraoke = Caraoke.new("CCCs Caraoke Club", rooms_singular)
        @caraoke_multi_room = Caraoke.new("CCCs Caraoke Club", rooms_many)
        @room1 = Rooms.new("Country and Western", song_list1)
        @song1 = Song.new("Jolene", "Dolly Parton", "Country and Western")

    end

    def test_room_name
        assert_equal("Country and Western", @room1.name())
    end
    
    def test_room_songs
        assert_equal(song_list1, @room1.song_list1())
    end



end