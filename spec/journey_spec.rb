require 'journey'

describe Journey do

  # subject(:Journey) {described_class.new("Aldgate", "West Hampstead")}
  
  it 'takes entry station' do
    expect(subject.start("Aldgate")).to eq "Aldgate"
  end

  it 'takes exit station' do 
    expect(subject.finish("West Hampstead")).to eq "West Hampstead"
  end

  it 'knows a journey is incomplete' do
    expect(subject).not_to be_complete
  end
  
  it 'checks a journey is complete' do
    subject.start("Aldgate")
    subject.finish("West Hampstead")
    expect(subject).to be_complete
  end

  # it 'has a penalty fare by default' do
  #   expect(subject.fare).to eq Journey::PENALTY_FARE 
  # end

  it "returns a penalty fare if no exit station given" do
    subject.start("Aldgate")
    expect(subject.fare).to eq Journey::PENALTY_FARE
  end

  it "returns a fare if an entry station and exit station is given" do
    subject.start("Aldgate")
    subject.finish("west Hampstead")
    expect(subject.fare).to eq 1
  end
  
end