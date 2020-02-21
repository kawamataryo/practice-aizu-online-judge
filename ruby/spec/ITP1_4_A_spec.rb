# frozen_string_literal: true

def func
  a, b = gets.split.map(&:to_i)
  puts "#{(a / b).ceil} #{a % b} #{format('%.5f', a / b.to_f)}"
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      3 2
    EOF
  end

  let(:result) do
    <<~EOF
      1 1 1.50000
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
