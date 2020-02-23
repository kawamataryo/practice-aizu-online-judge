# frozen_string_literal: true

def calc(numbers)
  "#{numbers.min} #{numbers.max} #{numbers.sum}"
end

def func
  line = gets
  numbers = gets.split.map(&:to_i)
  puts calc(numbers)
end

describe 'sample' do
  describe 'calc' do
    it {
      numbers = [10, 1, 5, 4, 17]
      expect(calc(numbers)).to eq '1 17 37'
    }
  end
end
