class Airport

  DEFAULT_CAPACITY = 5

  def initialized(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def runway(plane)
    @runway = []
    @runway << plane
  end

  def taxiway(plane)
    @taxiway = []
    @taxiway << plane
  end

end
