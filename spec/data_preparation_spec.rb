require 'spec_helper'

describe DataPreparation do

  let(:data_preparation) { described_class.new }
  file = './sample.txt'

  it "should initialize with an empty hash" do
    expect(data_preparation.output).to eq({})
  end

  it "should open a file and read a line" do
    expect(data_preparation.read_file(file).length).to be(20)
  end
end
