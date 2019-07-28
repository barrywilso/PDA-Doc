require("minitest/autorun")
require("minitest/rg")
require_relative("../card_game")
require_relative("../card")

class TestCardGame < MiniTest::Test

  def setup()
    @card1 = Card.new("spades", 1)
    @card2 = Card.new("diamonds", 3)
    @card3 = Card.new("clubs", 12)
  end

  def test_check_for_ace()
    test = check_for_ace(@card1)
    assert_equal(true, test)
  end


  # def test_highest_card()
  #   @card2 = Card.new("clubs", 12)
  #   assert_equal(12, @card2.value)
  # end


end
