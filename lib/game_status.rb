# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def won?(board)
    WIN_COMBINATIONS.detect do |combination|
      combination.all? {|win_index| board[win_index] == "X"} || combination.all? {|win_index| board[win_index] == "O"}
    end
  end
  
  def full?(board)
    board.all? {|space| space == "X" || space == "O"}
  end
  
  def draw?(board)
    full?(board) && !won?(board) 
  end
  
  def over?(board)
    won?(board) || draw?(board)
  end
  
  def winner(board)
    if won?(board).class == Array
      board[won?(board)[0]]
    end
  end