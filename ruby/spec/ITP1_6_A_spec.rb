# frozen_string_literal: true

def func
  _n = gets
  puts gets.split.map(&:to_i).reverse.join(" ")
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      8
      3 3 4 4 5 8 7 9
    EOF
  end

  let(:result) do
    <<~EOF
      9 7 8 5 4 4 3 3
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
