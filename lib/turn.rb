def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] == "O" || board[index] == "X"
end

def valid_move?(board, index)
  !(position_taken?(board, index)) && index.between?(0, 8)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, input_to_index, value = "X")
  board[input_to_index] = value
end

def turn(board)
  input_to_index(user_input)
  if board(position_taken) == valid_move
    move
  else
    board(position_taken) != valid_move
    puts "Invalid Move"
  end
end
