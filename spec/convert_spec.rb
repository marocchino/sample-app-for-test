require 'rails_helper'

def convert(input); end

RSpec.describe '#convert' do
  it 'converts array to hash' do
    expect(convert([:a, 1, :b, 2])).to eq({ a: 1, b: 2 })
  end
end
