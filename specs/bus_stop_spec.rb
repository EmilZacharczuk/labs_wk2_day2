require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")
require_relative("../bus_stop")

class BusStopTest < Minitest::Test

  def setup
    @bus_stop = BusStop.new("Princes Street")
  end

  def test_bus_stop_name
    assert_equal("Princes Street", @bus_stop.name)
  end

  def test_queue_length
    assert_equal(0, @bus_stop.queue_length)
  end

  def test_add_person_to_queue
    @person_1 = Person.new("Joe", 26)
    @bus_stop.add_person_to_queue(@person_1)
    assert_equal(1,@bus_stop.queue_length )
  end

end
