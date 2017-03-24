require 'spec_helper'

describe Record do

  string = '2015-03-25 21:15:00	KCXP 252115Z AUTO 08005KT 10SM CLR 17/M01 A3033 RMK AO2'
  let(:record) { described_class.new(string) }

  it 'should convert the string to an object' do
    expect(record.objectify).to be_an_instance_of(Record)
  end

  it 'should add a four digit string to property "visibility"' do
    record.objectify
    expect(record.visibility.length).to be(4)
  end
end
