# frozen_string_literal: true

def write_line(w, pattern)
  result = []
  w.times do |i|
    result.push(pattern[0]) if i.odd?
    result.push(pattern[1]) if i.even?
  end
  result.join
end

def write(h, w)
  h.times do |n|
    puts write_line(w, %w[# .]) if n.odd?
    puts write_line(w, %w[. #]) if n.even?
  end
  puts ''
end

def func
  loop do
    h, w = gets.split.map(&:to_i)
    break if [h, w].all? { |n| n == 0 }

    write(h, w)
  end
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      1 1
    EOF
  end

  let(:result) do
    <<~EOF
      #

    EOF
  end

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context '' do
    it {
      write(1, 1)
      expect($stdout.string).to eq result
    }
  end
end
