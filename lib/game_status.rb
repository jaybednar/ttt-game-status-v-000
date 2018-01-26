# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row horizontal
  [6,7,8],  # Bottom row
  [0,3,6],  # Left row vertical
  [1,4,7],  # Middle row vertical
  [2,5,8],  # Right row vertical
  [0,4,8],  # Diagonal Top left
  [2,4,6],  # Middle row vertical
]

# def won?(board)
#   x_indexes = board.each_index.select{ |i| board[i] == "X"}
#   o_indexes = board.each_index.select{ |i| board[i] == "O"}
#   if board.any?{ |i| board[i] != " " || board[i] != "" || board[i] != nil }
#      return false
#   end
# end

def full?(board) 
  if board.all{ |i| board[i] == "X" || board[i] == "O"}
    return true
  else 
    return false
  end
end
