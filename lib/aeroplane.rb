require_relative './fleet_creator'

class Aeroplane

  include FleetCreator

  attr_accessor :fleet
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

  def fleet
    @fleet = []
  end
end
