def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input  = gets.strip
  songs.each_with_index do |song, index|
    if user_input == song
      puts "Playing #{song}"
    elsif user_input == index
      puts "Playing #{songs[index]}"
    end
  end
  puts "Invalid input, please try again"
end
    

