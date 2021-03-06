# frozen_string_literal: true
#

def create_correct_set
  set = []
  %w(S H C D).each do |v|
    1.upto(13) do |i|
      set.push("#{v} #{i}")
    end
  end
  set
end

def func
  n = gets.to_i
  exists_cards = n.times.map{ gets.strip }

  correct_set = create_correct_set

  not_exists_cards = correct_set - exists_cards
  not_exists_cards.each do |c|
    puts c
  end
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
