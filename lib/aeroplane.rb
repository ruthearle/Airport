class Aeroplane

  attr_accessor :fleet
  
  def initialize
    @status = :flying
  end

  def status
    @status
  end

  def take_off!
    @status = :flying
    self
  end

  def land!
    @status = :landed
    self
  end

  def fleet
    @fleet = []
  end
end
