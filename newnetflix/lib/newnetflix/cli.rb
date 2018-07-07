class Newnetflix::CLI

  def call
    puts "Welcome to New Netflix! Today is . The new shows on Netflix today are:"
    list_new_shows
    menu
  end

  def list_new_shows
    puts "1.Gilmore Girls - TV14 2.The Walking Dead TV-MA"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which show would you like to learn more about? Enter the number of the show, or type exit"
      input = gets.chomp
    case input
      #will need to be variable depending on the number of new shows in a day....
    when "1"
      puts "Gilmore Girls is a show...."
    when "2"
      puts "TWD is a show about...."
    when "exit"
      goodbye
    else
      puts "I do not recognize your input."
    end
  end
end

  def goodbye
    puts "Enjoy your show!"
  end


end
