# frozen_string_literal: true

def func
  a = gets.to_i
  puts "#{sprintf("%.5f", Math::PI * a ** 2)} #{sprintf("%.5f", Math::PI * a * 2)}"
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      3
    EOF
  end

  let(:result) do
    <<~EOF
      28.274334 18.849556
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
