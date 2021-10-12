require "socket"

server = TCPServer.new(2345)

socket = server.accept

while true
  socket.puts "What do you say?"
  input = socket.gets.chomp
  if input != "quit"
    socket.puts "You said: #{input}."
  elsif input == "quit"
    socket.puts "You said: #{input}. Goodbye!"
    socket.close
  end
end
