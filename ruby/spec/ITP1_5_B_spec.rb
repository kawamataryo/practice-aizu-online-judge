# frozen_string_literal: true

def write(h, w)
  h.times do |n|
    if n == 0
      puts '#' * w
      next
    end
    if n == (h - 1)
      puts '#' * w
      next
    end
    puts "##{'.' * (w - 2)}#"
  end
  puts ''
end

def func
  loop do
    h, w = gets.split.map(&:to_i)
    break if [h, w].all? {|n| n == 0}

    write(h, w)
  end
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
