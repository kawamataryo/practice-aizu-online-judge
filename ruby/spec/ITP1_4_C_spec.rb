# frozen_string_literal: true

def calc(a, b, op)
  return a + b if op == '+'
  return a - b if op == '-'
  return a * b if op == '*'

  a / b if op == '/'
end

def func
    a, op, b = gets.split
    a, b = [a, b].map(&:to_i)
    puts calc(a, b, op)
    return if op == '?'
    func
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      1 + 2
    EOF
  end

  let(:result) do
    <<~EOF
      3
    EOF
  end

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context '' do
    it {
      puts func
      expect($stdout.string).to eq result
    }
  end
end
