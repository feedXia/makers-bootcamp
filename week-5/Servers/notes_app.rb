# Create a separate NoteList class and make a notes app you can control over the network.

require "socket"

class NoteList
  attr_reader :notes
  server = TCPServer.new(2345)

  socket = server.accept

  @notes = []

  while true
    socket.puts "What would you like to add in your notes?"
    input = socket.gets.chomp
    if input != "quit"
      # Adds new note
      @notes << input
      @notes.each do |note|
        socket.puts "* #{note}"
      end
    elsif input == "quit"
      #  Quits when user types 'quit'
      socket.puts "Quitting... Goodbye!"
      socket.close
    end
  end

  #   def initialize
  #     @notes = []
  #   end

  #   def add_note(note)
  #     socket.puts "What would you like to add in your notes?"
  #     notes << socket.gets.chomp
  #   end

  #   def show_notes
  #     p @notes
  #   end

  #   def quit_notes
  #     socket.puts "Qutting. Goodbye!"
  #     socket.close
  #   end
end
