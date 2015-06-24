# final_week1.rb


puts "This is a game to play to help cops determine when and if they should use lethal force."

puts '  #     #                                              #####                                 ######         
 #  #  # #    #   ##   #####  ####  #    #   ##      #     #  ####  #    # #    #   ##      #     #  ####  
 #  #  # #    #  #  #    #   #    # #    #  #  #     #       #    # ##   # ##   #  #  #     #     # #    # 
 #  #  # ###### #    #   #   #      ###### #    #    #  #### #    # # #  # # #  # #    #    #     # #    # 
 #  #  # #    # ######   #   #      #    # ######    #     # #    # #  # # #  # # ######    #     # #    # 
 #  #  # #    # #    #   #   #    # #    # #    #    #     # #    # #   ## #   ## #    #    #     # #    # 
  ## ##  #    # #    #   #    ####  #    # #    #     #####   ####  #    # #    # #    #    ######   ####  
                                                                                                           '


sleep(0.50)

prompt = '>'

# change length of line in one place
def line
	puts "-" * 100
end

# insert space into game for readability
def space
	puts " " * 100
end

# ask the same question many times, reduced to one method
def ask_question(question, options)
	puts question, options
	gets.chomp.downcase
end
score = 0

# score = ["Shoot": 100, "Don't Shoot": 0]

line
puts "****"
puts "Rule #1: Only shoot if your life or someone else's life is in danger. This is the only rule for this game."
puts "****"
line

sleep(1.50)
space

puts "1st question"

puts "You stop little Johnny for riding on the wrong side of the street. When you go to talk to him
little Johnny shoves his bike at you and it hits your shin and it hurts really bad."
space

sleep(5.0)

options = ["Shoot", "Don't Shoot"]
question = "What do you do?"
scenerio1 = ask_question(question, options)

prompt

	

space


if scenerio1 == "shoot"
	puts "Wrong. A bump on your shin is not lethal and should not require lethal force. Refer to Rule #1."
	
elsif scenerio1 == "don't shoot" || "dont shoot"
	puts "Right. You take him home and let his momma deal with his bad attitude."
	score += 100
else
	puts "That is not an acceptable answer."
end 

sleep(1.0)



line 
puts "Your score is #{score / 1}%."
line

# score1 
sleep(1.0)

puts "Are you ready for Scenerio # 2?"
puts "Option: Yes or No", prompt
question2 = gets.chomp.downcase

line

if question2 == "yes" 


space
	puts "You're in line getting lunch at Subway. As you get closer to the front of the line you reach awkardly around
	the woman in front of you to grab a bag of chips. The women smacks you on the hand and says 'Wait your turn!'."
	

	sleep(5.0)
	space


	scenerio2 = ask_question(question, options) 
	prompt

	space

	if scenerio2 == "shoot"
		puts "Wrong. Refer back to Rule #1"
	elsif scenerio2 == "don't shoot" || "dont shoot"
		puts "Right. She was just teaching you some manners you beast of a man you."
		score +=100
	else
		puts "That is not an acceptable answer."
	end 

	sleep(1.0)

	line 
	puts "Your score is #{score / 2}%."

	sleep(1.0)

	line
else question2 == "no"
	puts "You did not choose to finish this game. You will have a failing score
	until you finish the game. Please study Rule #1 until you are ready to play."
		puts "Your score is #{score / 2}%."
end

puts "Are you ready for Scenerio # 3?"
puts "Option: Yes or No", prompt
question3 = gets.chomp.downcase

line

if question3 == "yes" 


	space
	puts "You watch what appears to be a drug deal go down at a street corner. 
	You try to make an arrest. The suspect runs away from you. You yell 'Stop or I will shoot you'
	The suspect does not stop."
	line

	sleep(5.0)

	space
	space

	scenerio3 = ask_question(question, options)
	prompt

	space

	if scenerio3 == "shoot"
		puts "Wrong. You just shot a man in the back. Refer back to Rule #1"
	elsif scenerio3 ==  "don't shoot" || "dont shoot"
		puts "Right. This man was probably breaking the law but your life was not in danger. Good job officer."
		score +=100
	else
		puts "That is not an acceptable answer."
	end 

	sleep(1.0)

	

	sleep(1.0)

else question3 == "no"
	puts "You did not choose to finish this game. You will have a failing score
	until you finish the game. Please study Rule #1 until you are ready to play."
		puts "Your score is #{score / 3}%."
end

	line 
	puts "Your FINAL score is #{score / 3}%."
	line




space
line
puts "The End"
line
space
space


                                                                                               