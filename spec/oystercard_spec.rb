require "oystercard.rb"
# NameError: unitialized constant Oystercard
# FilePath: An error occurred while loading ./spec/oystercard_spec.rb.
# ErrorLineNumber: # ./spec/oystercard_spec.rb:3:in `<top (required)>'
describe Oystercard do

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
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

  describe '#deduct' do
    context 'to respond to one argument' do
      it { is_expected.to respond_to(:deduct).with(1).argument }
    end

    it 'to decrease balance by argument value' do
      expect{subject.deduct(5)}.to change{subject.balance}.by(-5)
    end
  end

  describe '#in_journey?' do
    it 'exists' do
      expect(subject).to respond_to(:in_journey?)
    end

    it "initially not in journey" do
      expect(subject).to_not be_in_journey
    end

    it "can touch in" do
      subject.touch_in
      expect(subject).to be_in_journey
    end

    it "can touch out" do
      subject.touch_in
      subject.touch_out
      expect(subject).to_not be_in_journey
    end
  end
  
end

# context '#take_off(plane)' do
#     let(:plane) { Plane.new }
#     before(:each) { subject.land(plane) }

#     it 'tells a plane to take off' do
#       expect(subject.take_off(plane)).to eq plane
#     end

# context "Capacity" do
#   it 'has a default capacity' do
#     expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
#   end