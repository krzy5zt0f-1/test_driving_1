require 'td1'

require 'rspec'

RSpec.describe Motivations do

  it "can initialize new Motivations object" do
  expect(subject).to be_instance_of Motivations
end
describe "#track_motivations" do
  it "gives friendly feedback" do
    expect(subject.track_motivation(4)).to eq "Motivation stored!"
  end
end
describe "#average_motivation" do
  it "returns a single value if single value stored" do
    subject.track_motivation(4)
    expect(subject.average_motivation).to eq 4
  end
  it "returns average of two numbers if only two nubmers stored" do
    subject.track_motivation(6)
    subject.track_motivation(4)
  expect(subject.average_motivation).to eq 5
end
it "returns average of three numbers if three or more nubmers stored" do
  subject.track_motivation(6)
  subject.track_motivation(4)
  subject.track_motivation(12)
  subject.track_motivation(8)
expect(subject.average_motivation).to eq 8
end
end
end
