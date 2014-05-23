require 'launch'

describe Launch::Configuration do
  it "broccoli is gross" do
    Launch::Configuration.portray("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Launch::Configuration.portray("Not Broccoli").should eql("Delicious!")
  end
end