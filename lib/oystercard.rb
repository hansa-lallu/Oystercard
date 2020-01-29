class Oystercard
  attr_reader :balance, :entry_station

  MINIMUM_BALANCE = 1
  MAXIMUM_BALANCE = 90
  MINIMUM_FEE = 2


  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    # @entry_station == nil ? false : true
    !!entry_station
  end

  def touch_in(station)
    raise "Insufficient balance to touch in" if @balance < MINIMUM_BALANCE
    @entry_station = station
  end

  def touch_out
    deduct(MINIMUM_FEE)
    @entry_station = nil
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end