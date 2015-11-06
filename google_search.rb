require 'rest-client'

site = "https://www.google.com.mx/search"
what_to_search = ARGV[1]

if what_to_search == "" then puts "you didn't search for anything." end

search = RestClient.get("https://www.google.com.mx/webhp", {:params=>{:q=>what_to_search}})

puts search