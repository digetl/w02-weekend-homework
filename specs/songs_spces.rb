require('minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms' )
require_relative( '../guests' )
require_relative( '../songs' )
require_relative( '../caraoke' )

class TestSongs < MiniTest::Test

    def setup
        @song1 = Song.new("Jolene", "Dolly Parton", "Country and Western")
    end

    def song_list_test()

        assert_equal("Jolene", @song1.title)
    end

    


end