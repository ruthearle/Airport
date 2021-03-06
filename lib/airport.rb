require_relative 'weather'

class Airport

  include Weather

  DEFAULT_CAPACITY = 5

  attr_writer :capacity

  def initialized(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def planes
    @planes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def land!(plane)
    full_error if full?
    stormy_land_error if condition == :stormy
    planes << (plane.land!)
  end

  def take_off!(plane)
    stormy_take_off_error if condition == :stormy
    planes.delete(plane.take_off!)
  end

  def full?
    planes.count == capacity
  end

  def full_error
    raise "The airport is full. No clearance for landing!"
  end

  def stormy_land_error
    raise "There is a storm brewing. No clearance for landing!"
  end

  def stormy_take_off_error
    raise "There is a storm. No clearance for take off!"
  end
end
