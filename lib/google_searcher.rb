require 'rubygems'
require 'launchy'

#recherche google
def google_searcher_input
a = "https://www.google.com/search?q="
abort("Veuillez entrez votre recherche s'il vous plaît?") if ARGV.empty?

x = ""
for i in ARGV
	x = "#{x}+#{i}"

end
x[0]=""
puts "#{a}#{x}"
Launchy.open("#{a}#{x}")
end

google_searcher_input