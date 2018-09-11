# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)
  combination = 0
  while combination < WIN_COMBINATIONS.length
    current_combination = WIN_COMBINATIONS[combination]
    if current_combination.all? {|position| board[position] == "X" || [position] == "O"} == true
      return combination
    end
    combination += 1
  end
end
  

def full?(board)
  board.all? {|index| index == 'X' || index == 'O'}
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end  
end  

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end