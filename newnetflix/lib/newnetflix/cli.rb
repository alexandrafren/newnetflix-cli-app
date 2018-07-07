class Newnetflix::CLI

  def call
    puts "Welcome to New Netflix! Today is . The new shows on Netflix today are:"
    list_new_shows
    menu
  end

  def list_new_shows
    shows = Newnetflix::Show.today
    shows.each_with_index do |show, i|
      puts "#{i+1}. #{show.name} - #{show.genre}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which show would you like to learn more about? Enter the number of the show, or type exit"
      input = gets.chomp
      if input.to_i > 0
        puts "#{input.to_i}. #{Newnetflix::Show.today[input.to_i - 1].name}"
      elsif input == "exit"
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
