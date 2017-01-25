require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end


def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_cards = deal_card() + deal_card()
  display_card_total(initial_cards)
  initial_cards
  # code #initial_round here
end

def hit?(card_total)
  prompt_user()
  input = get_user_input()
  if input == "s"
    card_total
  elsif input == "h"
    card_total += deal_card()
  else
    invalid_command()
    hit?()
  end
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
###################S##################################

def runner
  welcome()
  card_total = initial_round()
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)


  # code runner here
end
