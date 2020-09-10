
# Run "Tick" untill recieving "q"

terminate = Channel(Nil).new

spawn(name: "tick") do
  loop do
    select
    when terminate.receive?
      break
    else
      puts "Tick"
      sleep 1
    end
  end
end

while line = gets
  if line == "q"
    terminate.close
  end
end
