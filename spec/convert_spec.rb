require 'rails_helper'

def convert(input)
  input.each_slice(2).each_with_object({}) do |(k, v), map|
    map[k] = v
  end
end

RSpec.describe '#convert' do
  it 'converts array to hash' do
    expect(convert([:a, 1, :b, 2])).to eq({ a: 1, b: 2 })
  end
end
