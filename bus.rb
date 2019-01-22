class Bus
  attr_reader :route, :destination

  def initialize(route, destination, people_on_bus)
    @route = route
    @destination = destination
    @people_on_bus = people_on_bus
  end

  def drive
    return "Brumm brumm"
  end

  def how_many
    return @people_on_bus.length
  end

  def add_person(person)
    @people_on_bus << person
  end

  def remove_passenger(person)
    for passenger in @people_on_bus
      if passenger == person
        @people_on_bus.delete(person)
      end
    end
  end

  def empty_bus
    @people_on_bus = []
  end
end
