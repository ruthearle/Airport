class Aeroplane

  def initialize
    @flying = true
  end

  def flying?
    @flying
  end

  def fly!
    @flying = true
    self
  end

  def land!
    @flying = false
    self
  end
end
