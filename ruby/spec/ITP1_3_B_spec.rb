# frozen_string_literal: true

def func
  data_set = gets.split("\n")
  data_set.each.with_index(1) { |d, i| puts "Case #{i}: #{d}" if i != 0 }
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      3
      5
      11
      7
      8
      19
      0
    EOF
  end

  let(:result) do
    <<~EOF
      Case 1: 3
      Case 2: 5
      Case 3: 11
      Case 4: 7
      Case 5: 8
      Case 6: 19
    EOF
  end

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context '' do
    it {
      func
      expect($stdout.string).to eq result
    }
  end
end
