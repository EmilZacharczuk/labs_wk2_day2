require("minitest/autorun")
require("minitest/rg")

require_relative("../person")

class PersonTest < MiniTest::Test
  def setup
     @person = Person.new("Pauline", 52)
  end
  def test_person_has_name
    assert_equal("Pauline", @person.name)
  end
  def test_person_has_age
    assert_equal(52, @person.age)
  end

end
