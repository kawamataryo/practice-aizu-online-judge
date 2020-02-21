# frozen_string_literal: true

def func
  st, en, target = gets.split.map(&:to_i)
  c = [*(st..en)].inject(0) do |count, n|
    count += 1 if target % n == 0
    count
  end
  puts c
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      5 14 80
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
      func
      expect($stdout.string).to eq result
    }
  end
end
