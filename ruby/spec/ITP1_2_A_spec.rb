# frozen_string_literal: true

describe 'sample' do
  let(:stdin) { 1 }

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  def func
    a, b = gets.split(' ').map(&:to_i)
    return 'a > b' if a > b
    return 'a < b' if a < b
    'a == b'
  end

  describe 'a > b' do
    let(:stdin) { '1 2' }

    it {
      print func
      expect($stdout.string).to eq 'a < b'
    }
  end

  describe 'a < b' do
    let(:stdin) { '2 1' }

    it {
      print func
      expect($stdout.string).to eq 'a > b'
    }
  end

  describe 'a == b' do
    let(:stdin) { '1 1' }

    it {
      print func
      expect($stdout.string).to eq 'a == b'
    }
  end
end
