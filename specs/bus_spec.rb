require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")

class BusTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Joe", 26)
    @person_2 = Person.new("Lucy", 21)
    @person_3 = Person.new("James", 77)
    empty_person = []
    @bus = Bus.new(22, "Ocean Terminal",empty_person)
  end

  def test_bus_route_number
    assert_equal(22, @bus.route)
  end

  def test_bus_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_drive
    assert_equal("Brumm brumm", @bus.drive)
  end

  def test_passengers_count
    assert_equal(0, @bus.how_many)
  end

  def test_add_passenger
    @bus.add_person(@person_1)
    assert_equal(1, @bus.how_many)
  end

  def test_remove_passenger
    @bus.add_person(@person_1)
    @bus.add_person(@person_2)
    @bus.add_person(@person_3)
    assert_equal(3, @bus.how_many)

    @bus.remove_passenger(@person_2)
    assert_equal(2, @bus.how_many)
  end

  def test_empty_bus
    @bus.add_person(@person_1)
    @bus.add_person(@person_2)
    @bus.add_person(@person_3)
    @bus.empty_bus
    assert_equal(0, @bus.how_many)

    end


end
