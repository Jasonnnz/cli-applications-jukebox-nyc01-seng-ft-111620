def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index + 1}. #{val}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input  = gets.strip
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end
    

