puts "ジャンケン！"
def  game_one
 puts "0(グー)1(チョキ)2(パー)3(ジャンケンをやめる)"
 player_number = gets.to_i
 computer_number = rand(3)
 shapes = ["グー","チョキ","パー"]
 puts "ポン！"
 puts "--------------------"
 puts "あなたは#{shapes[player_number]}を出しました"
 puts "相手は#{shapes[computer_number]}を出しました"
 puts "--------------------"
 
 if  player_number == computer_number
 puts "あいこで"
   return game_one
 elsif (player_number == 0 && computer_number == 1)||(player_number == 1 && computer_number == 2)||(player_number == 2 && computer_number == 0)
  return  game_two
   #ジャンケン：プレイヤーの勝ち
 else 
  return game_three
   #ジャンケン：プレイヤーの負け
 end 
end
 
def game_two
 puts "あっち向いて"
 puts "0(上)1(下)2(右)3(左)"
 player_number = gets.to_i
 computer_number = rand(3)
 directions = ["上","下","右","左"]
 puts "ほい！"
 puts "あなた:#{directions[player_number]}"
 puts "相手:#{directions[computer_number]}"
 puts "--------------------"
 if player_number == computer_number
 puts "☆あなたの勝ちです☆"
 else
   puts "ジャンケン！"
   return game_one
 end
end

def game_three
 puts "あっち向いて"
 puts "0(上)1(下)2(右)3(左)"
 player_number = gets.to_i
 computer_number = rand(3)
 directions = ["上","下","右","左"]
 puts "ほい！"
 puts "あなた:#{directions[player_number]}"
 puts "相手:#{directions[computer_number]}"
 puts "--------------------"
 if player_number == computer_number
 puts "★あなたの負けです★"
 else
 puts "ジャンケン！"
 return game_one
 end
end

game_one
