require("minitest/autorun")
require("minitest/rg")
require_relative("../card_game")
require_relative("../card")

class TestCardGame < MiniTest::Test

  def setup()
    @card1 = Card.new("spades", 1)
    @card2 = Card.new("diamonds", 3)
    @card3 = Card.new("clubs", 12)
    @cards = [@card1, @card2, @card3]
  end

  def test_check_for_ace()
    assert_equal(1, @card1.value)
  end

  def test_highest_card()
    result = highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_self_cards_total()
    result = cards_total(@cards)
    assert_equal(16, result)
  end

end
