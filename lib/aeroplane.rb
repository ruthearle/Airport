class Aeroplane

  def initialize
    @flying = true
  end

  def flying?
    @flying
  end

  def take_off!
    self
  end

  def land!
    @flying = false
    self
  end
end
