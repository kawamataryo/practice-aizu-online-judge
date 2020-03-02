# frozen_string_literal: true

class Building
  def initialize
    @rooms = Array.new(3).map { Array.new(10, 0) }
  end

  attr_accessor :rooms

  def move_in(f, r, v)
    rooms[f - 1][r - 1] += v
  end

  def print_move_in_status
    rooms.each do |f|
      puts f.join(' ')
    end
  end
end

def func; end

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
