# frozen_string_literal: true

describe 'sample' do
  let(:stdin) {}

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  def func
    a, b, c = gets.split.map(&:to_i)
    return 'Yes' if a < b && b < c
    'No'
  end

  context 'a < b < c' do
    let(:stdin) { '1 2 3' }

    it {
      print func
      expect($stdout.string).to eq 'Yes'
    }
  end

  context 'no' do
    let(:stdin) { '3 2 2' }

    it {
      print func
      expect($stdout.string).to eq 'Yes'
    }
  end
end
