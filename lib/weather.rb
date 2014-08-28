module Weather

	def weather
  	@weather = [:sunny, :stormy]
  end
  
  def condition
    weather.sample
    return self
  end
end
