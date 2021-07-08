def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if songs.include?(input)
    puts "Playing #{songs[songs.index(input)]}"
  elsif input.to_i < songs.length && input.to_i != 0
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"

  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  running = true
  while running
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    else
      running = false
    end
  end
  exit_jukebox
end
