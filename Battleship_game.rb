#BATTLESHIP GAME
 
 # This method generates random letters
def rl
    letters = "ABCDEFGHIJKLMNOPQRSTUWXYZ"
    r = rand 0..24
    return letters[r]
end
 
#Computer
 
 #Generating coordinates for the computer using Hashes  HI Mark!
 c_ship1 = {c_number = rand(1..10) => c_letter = rl}  #c_number and c_letter will be used later for when computer picks coordinates
 c_ship2 =  {num_1 = rand(1..9) => letter = rl, num_1 + 1 => letter}
 c_ship3 = {num_2 = rand(1..8) => letter = rl, num_2 + 1 => letter, num_2 + 2 => letter}
 c_ship4 = {num_3 = rand(1..7) => letter = rl, num_3 + 1 => letter, num_3 + 2 => letter, num_3 + 3 => letter}
 c_ship5 = {num_4 = rand(1..6) => letter = rl, num_4 + 1 => letter, num_4 + 2 => letter, num_4 + 3 => letter, num_4 + 4 => letter}
 
 
#Player

# Generates coordinates for player using Hashes 
  p_ship1 = Hash.new(0)
  p_ship2 = Hash.new(0)
  p_ship3 = Hash.new(0)
  p_ship4 = Hash.new(0)
  p_ship5 = Hash.new(0)
  
 
  puts "Hello Player! Welcome to the Battleship game!  What is your name?"
  name = gets.chomp.capitalize
  puts ""
  puts "Great! #{name}"
  puts ""
  puts "Please give your coordinates for the following ships with a letter between A and Z.  (Your coordinates for the numbers will be assigned randomly)"
  puts ""
 
  #Ship 1
 
  puts "Pick a letter for Ship One"
 
#Asking user for the letters and number coordinates for the shipswhich is pushed to the hash
  while ship1_letter = gets.chomp.upcase # loop while getting user input
  case ship1_letter
  when ship1_letter
  if ship1_letter =~ /["a-zA-Z"]/ && ship1_letter.length == 1  #Makes sure input is a letter A to Z only && length is == 1
    p_ship1[rand(1..10)] = ship1_letter
    puts "You have picked #{ship1_letter}!"
    break
  elsif ship1_letter.length >= 2
    puts "Please enter no more than one letter"
  else
    puts "Please enter a letter"
  end
end 
end
  puts ""
  #Ship 2
 
  puts "Pick a letter for Ship Two"
 
  while ship2_letter = gets.chomp.upcase # loop while getting user input
  case ship2_letter
  when ship2_letter
  if ship2_letter =~ /["a-zA-Z"]/ && ship2_letter.length == 1  #Makes sure input is a letter A to Z only && length is == 1
    p_ship2[ship_num2 = rand(1..9)] = ship2_letter
    p_ship2[ship_num2 + 1] = ship2_letter
    puts "You have picked #{ship2_letter}!"
    break
  elsif ship2_letter.length >= 2
    puts "Please enter no more than one letter"
  else
    puts "Please enter a letter"
  end
end 
end
  puts ""
  #Ship 3
 
  puts "Pick a letter for Ship Three"
 
  while ship3_letter = gets.chomp.upcase # loop while getting user input
  case ship3_letter
  when ship3_letter
  if ship3_letter =~ /["a-zA-Z"]/ && ship3_letter.length == 1  #Makes sure input is a letter A to Z only && length is == 1
    p_ship3[ship_num3 = rand(1..8)] = ship3_letter
    p_ship3[ship_num3 + 1] = ship3_letter
    p_ship3[ship_num3 + 2] = ship3_letter
    puts "You have picked #{ship3_letter}!"
    break
  elsif ship3_letter.length >= 2
    puts "Please enter no more than one letter"
  else
    puts "Please enter a letter"
  end
end 
end
  puts ""
  #Ship 4
 
  puts "Pick a letter for Ship Four"
 
  while ship4_letter = gets.chomp.upcase # loop while getting user input
  case ship4_letter
  when ship4_letter
  if ship4_letter =~ /["a-zA-Z"]/ && ship4_letter.length == 1  #Makes sure input is a letter A to Z only && length is == 1
    p_ship4[ship_num4 = rand(1..7)] = ship4_letter
    p_ship4[ship_num4 + 1] = ship4_letter
    p_ship4[ship_num4 + 2] = ship4_letter
    p_ship4[ship_num4 + 3] = ship4_letter
    puts "You have picked #{ship4_letter}!"
    break
  elsif ship4_letter.length >= 2
    puts "Please enter no more than one letter"
  else
    puts "Please enter a letter"
  end
end 
end
puts ""
  #Ship 5
 
  puts "Pick a letter for Ship Five"
 
  while ship5_letter = gets.chomp.upcase # loop while getting user input
  case ship5_letter
  when ship5_letter
  if ship5_letter =~ /["a-zA-Z"]/ && ship5_letter.length == 1  #Makes sure input is a letter A to Z only && length is == 1
    p_ship5[ship_num5 = rand(1..6)] = ship5_letter
    p_ship5[ship_num5 + 1] = ship5_letter
    p_ship5[ship_num5 + 2] = ship5_letter
    p_ship5[ship_num5 + 3] = ship5_letter
    p_ship5[ship_num5 + 4] = ship5_letter
    puts "You have picked #{ship5_letter}!"
    break
  elsif ship5_letter.length >= 2
    puts "Please enter no more than one letter"
  else
    puts "Please enter a letter"
  end
end 
end
 
puts ""
 
 #Printing player's coordinates from the hash
puts "Your coordinates are as followed: "
  print "Ship One = "
  p_ship1.each { |key, value| print "(#{value}, #{key})  " }
  puts ""
  print "Ship Two = "
  p_ship2.each { |key, value| print "(#{value}, #{key})  " }
  puts ""
  print "Ship Three = "
  p_ship3.each { |key, value| print "(#{value}, #{key})  " }
  puts ""
  print "Ship Four = "
  p_ship4.each { |key, value| print "(#{value}, #{key})  " }
  puts ""
  print "Ship Five = "
  p_ship5.each { |key, value| print "(#{value}, #{key})  " }
 
  #Time the actual Battleship Game!
  puts ""
  puts "It's time to man your Battleships. Let's the games begin!"
  puts ""
  puts "Pick a letter and number coordinates starting with a letter then number"
 
  puts ""


  
#Keeps track of which ships has been stunk

  #Player
#Keeps track of how many times each ships were hit  
  c_ship_1_hit = 0
  c_ship_2_hit = 0
  c_ship_3_hit = 0
  c_ship_4_hit = 0
  c_ship_5_hit = 0

#This will be used later in the game to ensure user and computer do not enter in previous coordinates
  p_coordinates_used = []
  
  
  c_coordinates_used = []
  
  
  #Computer

#Keeps track of how many ships were stunk  
  p_ship_hits = 0
  c_ship_hits = 0

#Loop until either player's or computer's fleet is stunk  
  while p_ship_hits <= 4 || c_ship_hits <= 4
 
#As for user's input to guess enemy's coordinates 
    while player_letter = gets.chomp.upcase
    case player_letter
    when player_letter
    if player_letter =~ /["a-zA-Z"]/ && player_letter.length == 1
      break
    elsif player_letter.length >= 2 
      puts "Please enter no more than one letter"
    else
      puts "Please enter a letter"
    end
  end
end 
 
    while player_num = gets.chomp.to_i
    case player_num
    when 1..10
      break
    else
      puts "Please enter a number 1 to 10"
    end
  end
  
#Keeps looping through until player's input is false  
 
      players_turn = true
      unless not players_turn
#Conditinal statements to see if player's input matches the computer's coordinates or if player has already stunken computer's ship      
#Ship one__________________________________________________________________________
        if (c_ship1.key?(player_num)) && (c_ship1.value?(player_letter)) && (c_ship_1_hit >= 1)
          puts "You have already stunken Enemy's Ship number one!"
        elsif (c_ship1.key?(player_num)) && (c_ship1.value?(player_letter))
          puts "You have stunken Enemy's ship number one!"
          puts "Again!"
          c_ship_1_hit += 1
          c_ship_hits += 1
  
#Ship two__________________________________________________________________________
        elsif (c_ship2.key?(player_num)) && (c_ship2.value?(player_letter)) &&
          (c_ship_2_hit >= 2)
          puts "You have already stunken Enemy's Ship number two!"
        elsif (c_ship2.key?(player_num)) && (c_ship2.value?(player_letter)) &&
          (c_ship_2_hit == 1) 
          puts "You have stunken Enemy's Ship number two!"
          c_ship_2_hit += 1
          c_ship_hits += 1
        elsif (c_ship2.key?(player_num)) && (c_ship2.value?(player_letter))
          puts "Hit"
          puts "Again!"
          c_ship_2_hit += 1
#Ship three________________________________________________________________________
        elsif (c_ship3.key?(player_num)) && (c_ship3.value?(player_letter)) && (c_ship_3_hit >= 3)
          puts "You have already stunken Enemy's Ship number three!"
        elsif (c_ship3.key?(player_num)) && (c_ship3.value?(player_letter)) &&
          (c_ship_3_hit == 2)
          puts "You have stunken Enemy's Ship number three!"
          c_ship_3_hit += 1 
          c_ship_hits += 1
        elsif (c_ship3.key?(player_num)) && (c_ship3.value?(player_letter)) 
          puts "Hit!"
          puts "Again!"
          c_ship_3_hit += 1
#Ship four_________________________________________________________________________
        elsif (c_ship4.key?(player_num)) && (c_ship4.value?(player_letter)) && (c_ship_4_hit >= 4)
          puts "You have already stunken Enemy's Ship number four!"
        elsif (c_ship4.key?(player_num)) && (c_ship4.value?(player_letter)) && (c_ship_4_hit == 3) 
          puts "You have stunken Enemy's Ship number four!"
          c_ship_4_hit += 1 
          c_ship_hits += 1
        elsif (c_ship4.key?(player_num)) && (c_ship4.value?(player_letter))
          puts "Hit!"
          puts "Again!"
          c_ship_4_hit += 1
#Ship five_________________________________________________________________________
        elsif (c_ship5.key?(player_num)) && (c_ship5.value?(player_letter)) && (c_ship_5_hit >= 5)
          puts "You have already stunken Enemy's Ship number five!"
        elsif (c_ship5.key?(player_num)) && (c_ship5.value?(player_letter)) && (c_ship_5_hit >= 4)
          puts "You have stunken Enemy's Ship number five!"
          c_ship_5_hit += 1
          c_ship_hits += 1
        elsif (c_ship5.key?(player_num)) && (c_ship5.value?(player_letter))
          puts "Hit!"
          c_ship_5_hit += 1
        elsif p_coordinates_used.length.times.any? do |i|
            (p_coordinates_used[i].include?(player_letter)) && (p_coordinates_used[i].include?(player_num))
            end 
            puts "You have already used those coordinates!"
            puts "Please pick a different coordinate"
    
#If player's input does not meet conditional statments the loop is true and exsits out to go to the computer's turn            
          players_turn = true
          computers_turn = false
          
          
        else
          puts "Your coordinates of (#{player_letter}, #{player_num}) has missed"
          puts ""
          puts "It's the Enemy's turn!"
          players_turn = false
          computers_turn = true
        end
        p_coordinates_used << [player_letter, player_num]
#Compter's turn using conditional statement just like we did for player        
        unless not computers_turn
       
        c_number1 = rand(1..10)
        c_letter1 = rl
        
        puts "The enemy picked (#{c_letter1}, #{c_number1})"
          
          if  (p_ship1.key?(c_number1)) && (p_ship1.value?(c_letter1))
            puts "The enemy just struck one of you ships!"
            "The enemy picked (#{c_letter1}, #{c_number1})"
            p_ship_hits += 1
          elsif  (p_ship2.key?(c_number1)) && (p_ship2.value?(c_letter1))
            puts "The enemy just struck one of you ships!"
            "The enemy picked (#{c_letter1}, #{c_number1})"
            p_ship_hits += 1
          elsif  (p_ship3.key?(c_number1)) && (p_ship3.value?(c_letter1))
            puts "The enemy just struck one of you ships!"
            "The enemy picked (#{c_letter1}, #{c_number1})"
            p_ship_hits += 1
          elsif  (p_ship4.key?(c_number1)) && (p_ship4.value?(c_letter1))
            puts "The enemy just struck one of you ships!"
            "The enemy picked (#{c_letter1}, #{c_number1})"
            p_ship_hits += 1
          elsif  (p_ship5.key?(c_number1)) && (p_ship5.value?(c_letter1))
            puts "The enemy just struck one of you ships!"
            "The enemy picked (#{c_letter1}, #{c_number1})"
            p_ship_hits += 1
            
          elsif c_coordinates_used.length.times.any? do |i|
            (c_coordinates_used[i].include?(c_letter1)) && (c_coordinates_used[i].include?(c_number1))
            end 
            
             computers_turn = true 
             players_turn = false
            
            
          else
            puts ""
            puts "Your turn!"
            
            computers_turn = false
            players_turn = true
            
          end
          
          c_coordinates_used << [c_letter1, c_number1]
          
        end
      end
#End of the loop between player and computer if either's fleet were destroyed 
      if c_ship_hits >= 5
      puts "Congratulations #{name}! You have destroyed the Enemy's Fleet"
    elsif p_ship_hits >= 15 
      puts "Bummer! The Enemy has destroyed your Fleet.  Better luck next time"
    end 
  end
  

 

  


      
      
        

      
    
    
    
