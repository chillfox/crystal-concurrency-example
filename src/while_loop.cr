
# Run "Tick" untill recieving "q"

run = true

spawn do
  while run == true
    puts "Tick"
    sleep 1
  end
end

while line = gets
  if line == "q"
    run = false
  end
end
