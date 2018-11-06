require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
   board[index] != " " && board[index] != "" 
end

def valid_move?(board, index)
   !position_taken?(board, index) && index.between?(0, 8) 
  if board[index] != " " || board[index] != "" || board[index] != nil
    true
  else false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(1,9) || index == 0
    true
  else false
  end
>>>>>>> 41fe7de2859def0363c066c69142e2dbd5477a68
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value = "X") 
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
<<<<<<< HEAD
    if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
=======
    if valid_move?(board, index) == true
    move(board, index, value)
  else turn(board)
>>>>>>> 41fe7de2859def0363c066c69142e2dbd5477a68
  end
end
