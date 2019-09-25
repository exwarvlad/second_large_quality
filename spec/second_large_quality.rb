require 'rspec'
require_relative '../algorithms/calculate_second_large_quality'

describe '.calculate_second_large' do
  it 'multiple n' do
    3.times do |index|
      array = [1, 2, 3].map { |num| num * (index + 1) }
      big_array = [1, 2, 3, 4, 5].map { |num| num * (index + 1) }

      expect(calculate_second_large_quality(array)).to eq array[1]
      expect(calculate_second_large_quality(array.reverse)).to eq array[1]
      expect(calculate_second_large_quality(big_array)).to eq big_array[3]
      expect(calculate_second_large_quality(big_array.reverse)).to eq big_array[3]
    end
  end
end