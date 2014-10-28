module Weather

	def weather
  	@weather = [:sunny, :stormy]
  end
  
  def condition
    weather.sample
  end
end
