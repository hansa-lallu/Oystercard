class Journey

  attr_reader :entry_station, :exit_station

  PENALTY_FARE = 6
  MINIMUM_FARE = 1

  def initialize
    @entry_station = nil
    @exit_station = nil 
    # @fare = MINIMUM_FARE
  end

  def start(station)
    @entry_station = station
  end

  def finish(station)
    @exit_station = station
  end

  # def fare
  #   @fare
  # end

  def complete?
    @entry_station && @exit_station ? :true : false 
  end

  def calculate 
    @entry_station && @exit_station ? MINIMUM_FARE : PENALTY_FARE
  end

end
