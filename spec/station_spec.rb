require 'station'

describe Station do 

  # below is initialising a version of the class to be tested
  # mocking should be used when you dont have a class created already 
  subject {described_class.new("Aldgate", 1)}

  it 'knows its name' do
    expect(subject.name).to eq("Aldgate")
  end

  it 'knows its zone' do 
    expect(subject.zone).to eq(1)
  end

end
