require "oystercard.rb"
# NameError: unitialized constant Oystercard
# FilePath: An error occurred while loading ./spec/oystercard_spec.rb.
# ErrorLineNumber: # ./spec/oystercard_spec.rb:3:in `<top (required)>'
describe Oystercard do

  let( :station ) { double "fake station" }

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe ' #top_up' do
    context 'to respond to one argument' do
      it { is_expected.to respond_to(:top_up).with(1).argument }
    end

    it 'to increase balance by argument value' do
      expect{subject.top_up(5)}.to change{subject.balance}.by(5)
    end

    it 'has a maximum capacity' do
      subject.top_up(Oystercard::MAXIMUM_BALANCE)
      expect{subject.top_up(1)}.to raise_error("Maximum balance of #{Oystercard::MAXIMUM_BALANCE} exceeded")
    end
  end

  describe ' #in_journey?' do
    it 'exists' do
      expect(subject).to respond_to(:in_journey?)
    end

    it "initially not in journey" do
      expect(subject).to_not be_in_journey
    end
    
    it "after touch in is not equal to nil" do
      allow(station).to receive(:name) {"Brixton"}
      subject.top_up(Oystercard::MAXIMUM_BALANCE)
      subject.touch_in(station)
      expect(subject).to be_in_journey
    end

  end
  
  describe ' #touch_in' do

    it "can touch in" do
      allow(station).to receive(:name) {"Brixton"}
      subject.top_up(Oystercard::MAXIMUM_BALANCE)
      subject.touch_in(station)
      expect(subject).to be_in_journey
    end

    context "brings up an error" do
      it "if funds less the minimum" do
        expect{subject.touch_in(station)}.to raise_error("Insufficient balance to touch in")
      end
    end

    it 'can recall the station that we touched in at' do
      allow(station).to receive(:name) {"Brixton"}
      subject.top_up(Oystercard::MAXIMUM_BALANCE)
      subject.touch_in(station.name)
      expect(subject.entry_station).to eq "Brixton"
    end 
  end

  describe ' #touch_out' do

  before(:example) do
    allow(station).to receive(:name) {"Brixton"}
    subject.top_up(Oystercard::MAXIMUM_BALANCE)
    subject.touch_in(station.name)
  end

    it "can touch out" do
      subject.touch_out
      expect(subject).to_not be_in_journey
    end
    it "reduces " do
      expect{subject.touch_out}.to change{subject.balance}.by(-Oystercard::MINIMUM_FEE)
    end
    it "returns no value for touch in station" do
      subject.touch_out
      expect(subject.entry_station).to eq nil
    end
  end
  
end