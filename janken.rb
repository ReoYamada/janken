puts "じゃんけんしましょう！"
@player_point = 0

def janken
	puts "じゃ〜んけ〜ん..."
	puts "0(グー)1(チョキ)2(パー)3(戦わない)"
	
	player_select = gets.to_i
	enemy_select = rand(0..2)
	
	puts "ほい！！"
	puts "---------------"
	
	case player_select
		when 0
			puts "あなた：グー"	
			case enemy_select
				when 0
					puts "あいて：グー"
					puts "結果：あいこ"
				when 1
					puts "あいて：チョキ"
					puts "結果：あなたの勝ち"
					@player_point = 1
				when 2 
					puts "あいて：パー"
					puts "結果：あなたの負け"
					@player_point = -1
			end
		when 1
			puts "あなた：チョキ"
			case enemy_select
				when 0
					puts "あいて：グー"
					puts "結果：あなたの負け"
					@player_point = -1
				when 1
					puts "あいて：チョキ"
					puts "結果：あいこ"
				when 2 
					puts "あいて：パー"
					puts "結果：あなたの勝ち"
					@player_point = 1
			end
		when 2
			puts "あなた：パー"
			case enemy_select
				when 0
					puts "あいて：グー"
					puts "結果：あなたの勝ち"
					@player_point = 1
				when 1
					puts "あいて：チョキ"
					puts "結果：あなたの負け"
					@player_point = -1
				when 2 
					puts "あいて：パー"
					puts "結果：あいこ"
			end
		when 3
			puts "あなたは逃げ出した"
			@player_point = -10
		else
			puts "正しい数字を入力してください"
	end
end

def select4
	puts "あっち向いて"
	puts "0(上)1(右)2(下)3(左)"
	
	player_select = gets.to_i
	enemy_select = rand(0..3)
	
	puts "ほい！！"
	puts "---------------"
	
	case player_select
		when 0
			puts "あなたの選択：上"
			case enemy_select
				when 0
					puts "あいての選択：上"
					case @player_point
						when 1
							@player_point += 1
						when -1
							@player_point -= 1
					end
				when 1
					puts "あいての選択：右"
					@player_point = 0
				when 2
					puts "あいての選択：下"
					@player_point = 0
				when 3
					puts "あいての選択：左"
					@player_point = 0
			end
		when 1
			puts "あなたの選択：右"
			case enemy_select
				when 0
					puts "あいての選択：上"
					@player_point = 0
				when 1
					puts "あいての選択：右"
					case @player_point
						when 1
							@player_point += 1
						when -1
							@player_point -= 1
					end
				when 2
					puts "あいての選択：下"
					@player_point = 0
				when 3
					puts "あいての選択：左"
					@player_point = 0
			end
		when 2
			puts "あなたの選択：下"
			case enemy_select
				when 0
					puts "あいての選択：上"
					@player_point = 0
				when 1
					puts "あいての選択：右"
					@player_point = 0
				when 2
					puts "あいての選択：下"
					case @player_point
						when 1
							@player_point += 1
						when -1
							@player_point -= 1
					end
				when 3
					puts "あいての選択：左"
					@player_point = 0
			end
		when 3
			puts "あなたの選択：左"
			case enemy_select
				when 0
					puts "あいての選択：上"
					@player_point = 0
				when 1
					puts "あいての選択：右"
					@player_point = 0
				when 2
					puts "あいての選択：下"
					@player_point = 0
				when 3
					puts "あいての選択：左"
					case @player_point
						when 1
							@player_point += 1
						when -1
							@player_point -= 1
					end
			end
	end
end

while @player_point == 0
	while @player_point == 0
		janken
	end
	if @player_point == -10
		break
	end
	select4
end
if @player_point == 2
	puts "あなたの勝利！！おめでとう"
elsif @player_point == -2
	puts "あなたの負け〜残念"
else
	puts "負け犬！逃げ続けてなんかあるの？"
end
