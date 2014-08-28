class MyErrors <  RuntimeError

  def airport_full
    raise RuntimeError
    rescue => e
      e.message
  end

  def message_full
    "The airport is full. No clearance for landing!"
  end
end
