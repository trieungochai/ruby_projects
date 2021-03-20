users = [
  {username: "trieuhai1", password: "password1"},
  {username: "trieuhai2", password: "password2"},
  {username: "trieuhai3", password: "password3"},
  {username: "trieuhai4", password: "password4"},
  {username: "trieuhai5", password: "password5"},
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  return "Credentials were not correct"
end

puts "Welcome to the authenticators"
25.times {print "_"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press 'n' to quit, or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4

