def check_if_user_gave_input
  abort("mkdir: Entrer d'abord le nom de votre dossier?") if ARGV.empty?
end	
check_if_user_gave_input
def get_folder_name
	 folder_name = ARGV.first
end	
get_folder_name
def create(get_folder_name)
	 folder_name = get_folder_name
	Dir.mkdir(folder_name)
	Dir.mkdir(".gitignore")
	Dir.chdir("#{folder_name}")
	file = File.open("Gemfile","w")
	env = File.open(".env","w")
end
create(get_folder_name)
def file 
b = File.open("Gemfile","b")
b.puts('source "https://rubygems.org"')
b.puts("ruby '2.5.1'")
b.puts("gem 'rspec'")
b.puts("gem 'pry'")
b.puts("gem 'rubocop', '~> 0.57.2'")
b.puts("gem 'dotenv'")
b.puts("gem 'twitter'")
b.puts("gem 'nokogiri'")
b.puts("gem 'launchy'")
b.puts("gem 'watir'")
b.puts("gem 'selenium-webdriver'")
b.close
end	
file	
def create_lib
	Dir.mkdir("lib")
	system("rspec --init")
	system("bundle install")
end	
create_lib
