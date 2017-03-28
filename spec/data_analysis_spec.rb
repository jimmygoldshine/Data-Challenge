require 'spec_helper'

describe DataAnalysis do

  let(:data) { DataPreparation.new(Record) }
  let(:data_analysis) { described_class.new(data) }
  file = './sample.txt'

  it "should output 15 records" do
    data.execute(file)
    data.metadata
    expect(data_analysis.rank("top", "cloud_ceiling").length).to eq(15)
  end

  it "should output 15 records" do
    data.execute(file)
    data.metadata
    expect(data_analysis.rank("bottom", "visibility").length).to eq(15)
  end

end
