# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #topltr diagnal
  [2,4,6] #toprtl diagnal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") ||
    (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
    end
  end

  def full?(board)
    board.all? do |index|
      index == "X" || index == "O"
    end
  end

  def draw?(board)
    if (!won?(board) && full?(board))
        return true
    else
      return false
      end
    end

  def over?(board)
    if (won?(board) || draw?(board) || full?(board))
      return true
    else
      return false
    end
  end

  def winner(board)
    if(won?(board))
      return board[won?(board)[0]]
    end
  end
