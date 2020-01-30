class Oystercard
  attr_reader :balance, :entry_station, :exit_station, :journey

  MINIMUM_BALANCE = 1
  MAXIMUM_BALANCE = 90
  MINIMUM_FEE = 2


  def initialize
    @balance = 0
    @journey = {}
    
  end

  def top_up(amount)
    raise "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    !!entry_station
  end

  def touch_in(station)
    raise "Insufficient balance to touch in" if @balance < MINIMUM_BALANCE
    @entry_station = station
    @journey.store(:entry_station, entry_station)
  end

  def touch_out(station)
    deduct(MINIMUM_FEE)
    @exit_station = station
    @journey.store(:exit_station, exit_station)
    @entry_station = nil
  end 

  private

  def deduct(amount)
    @balance -= amount
  end

end