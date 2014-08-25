class Airport

  DEFAULT_CAPACITY = 5

  attr_accessor :capacity

  def initialized(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def planes
    @planes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def land(plane)
    raise "The airport is full. No clearance for landing!" if full?
    planes << plane
  end

  def runway(plane)
    planes.delete(plane)
    planes
  end

  def full?
    planes.count == capacity
  end
end
