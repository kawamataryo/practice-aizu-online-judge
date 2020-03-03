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
      puts ' ' + f.join(' ')
    end
  end
end

def func
  n = gets.to_i
  move_in_histories = n.times.map{gets.split.map(&:to_i)}
  building_a = Building.new
  building_b = Building.new
  building_c = Building.new
  building_d = Building.new

  move_in_histories.each do |history|
    b, f, r, v = history
    case b
    when 1
      building_a.move_in(f, r, v)
    when 2
      building_b.move_in(f, r, v)
    when 3
      building_c.move_in(f, r, v)
    when 4
      building_d.move_in(f, r, v)
    else
      # type code here
    end
  end

  puts building_a.print_move_in_status
  puts '#' * 20
  puts building_b.print_move_in_status
  puts '#' * 20
  puts building_c.print_move_in_status
  puts '#' * 20
  puts building_d.print_move_in_status
end

