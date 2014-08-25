class Airport

  DEFAULT_CAPACITY = 5

  def initialized(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def planes
    @planes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def landing_strip(plane)
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
