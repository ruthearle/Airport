class Aeroplane

  attr_reader :status

  def initialize
    @status = :flying
  end

  def take_off!
    @status = :flying
    self
  end

  def land!
    @status = :landed
    self
  end

end
