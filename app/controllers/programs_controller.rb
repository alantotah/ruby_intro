class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("May 13, 1990")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    @your_output = seconds_since_i_was_born

    first = "Alan"
    last = "Totah"

    @first_then_last = first + " " + last

    @last_then_first = last + ", " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    rock = 1
    scissors = 2
    paper = 3
    the_number = rand(3)

    if the_number == 1
      @your_output = "Rock" + "," + " " + "Tie"
    elsif the_number == 2
      @your_output = "Scissors" + "," + " " + "Lost"
    else
      @your_output = "Paper" + "," + " " + "Won"
    end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares
    
    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/third_program.html.erb")
  end
end
