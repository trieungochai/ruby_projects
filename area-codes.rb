dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfranciscp" => "301",
  "miami" => "305",
  "poloalto" => "650",
  "evanstion" => "847",
  "orlando" => "407",
  "lascaster" => "717"
}

def get_city_names(some_hash)
  some_hash.keys
end

def get_area_code(some_hash, key)
  some_hash[key]
end

loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want to look up the areacode for?"
  puts get_city_names(dial_book)
  puts "- Please enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered an invalid city name"
  end
end