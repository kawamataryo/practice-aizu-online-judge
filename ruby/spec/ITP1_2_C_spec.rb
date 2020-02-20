# frozen_string_literal: true

def func
  input = gets.split.map(&:to_i)
  input.sort.join(' ')
end

describe 'sample' do
  let(:stdin) {}

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context 'a < b < c' do
    let(:stdin) { '3 2 1' }

    it {
      print func
      expect($stdout.string).to eq '1 2 3'
    }
  end
end
