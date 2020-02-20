# frozen_string_literal: true

def func
  w, h, x, y, r = gets.split.map(&:to_i)
  return 'Yes' if x + r <= w && y + r <= h && x - r >= 0 && y - r >= 0
  'No'
end

describe 'sample' do
  let(:stdin) {}

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context 'Yes' do
    let(:stdin) { '5 4 2 2 1' }

    it {
      print func
      expect($stdout.string).to eq 'Yes'
    }
  end

  context 'No' do
    let(:stdin) { '5 4 2 4 1' }

    it {
      print func
      expect($stdout.string).to eq 'No'
    }
  end
end
