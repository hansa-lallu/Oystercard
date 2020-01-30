class Journey

  attr_reader :entry_station, :exit_station

  PENALTY_FARE = 6

  def initialize
    @entry_station = nil
    @exit_station = nil 
  end

  def start(station)
    @entry_station = station
  end

  def finish(station)
    @exit_station = station
  end

  def complete?
    @entry_station && @exit_station ? :true : false 
  end

  def fare 
    @entry_station && @exit_station ? 1 : PENALTY_FARE
  end

end
