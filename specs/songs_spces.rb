require('minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms' )
require_relative( '../guests' )
require_relative( '../songs' )
require_relative( '../careoke' )

class TestSongs < MiniTest::Test

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


        songlist1 = [song1, song2, song3]
        songlist2 = [song4, song5, song6]
        # @songlist3 = [song7, song8, song9]
        # @songlist4 = [song10, song11, song12]

        room1 = [songlist1, songlist2]
        # room2 = [songlist2, songlist3]
        # room3 = [songlist1, songlist4]

        @rooms = [room1]

        @careoke = Careoke.new("CCCs Careoke Club", 3)
    end


end