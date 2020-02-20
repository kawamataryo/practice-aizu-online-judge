# frozen_string_literal: true

def func
  1000.times { |_n| puts 'Hello World' }
end

describe 'sample' do
  let(:stdin) {}

  before do
    allow(ARGF).to receive(:gets) { stdin }
    $stdout = StringIO.new
  end

  context '' do
    it {
      func
      expect($stdout.string).to eq Array.new(1000).map { 'Hello World' }.join("\n") + "\n"
    }
  end
end
