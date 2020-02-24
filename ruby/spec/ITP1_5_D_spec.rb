# frozen_string_literal: true

def func
  n = gets.to_i
  result = []
  1.upto n do |i|
    if i % 3 == 0
      result.push(i)
      next
    end
    if i.to_s.match /.*3.*/
      result.push(i)
      next
    end
  end

  puts result.join(' ')
end

describe 'sample' do
  let(:stdin) do
    <<~EOF
      30
    EOF
  end

  let(:result) do
    <<~EOF
      3 6 9 12 13 15 18 21 23 24 27 30
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

<<~EOF
  void call(int n){
    int i = 1;
   CHECK_NUM:
    int x = i;
    if ( x % 3 == 0 ){
      cout << " " << i;
      goto END_CHECK_NUM;
    }
   INCLUDE3:
    if ( x % 10 == 3 ){
      cout << " " << i;
      goto END_CHECK_NUM;
    }
    x /= 10;
    if ( x ) goto INCLUDE3;
   END_CHECK_NUM:
    if ( ++i <= n ) goto CHECK_NUM;

    cout << endl;
  }
EOF
