# frozen_string_literal: true

def func
  while (x = gets.split.map(&:to_i)).all? { |v| v != 0 }
    puts x.reverse.join(' ')
  end
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      0 2
    EOF
  end

  let(:result) do
    <<~EOF
      2 0
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
