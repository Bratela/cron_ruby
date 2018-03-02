require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'csv'
require 'terminal-table'
# require 'rest-client'

PAGE_URL = "https://www.swedbank.lv/private/d2d/payments2/rates/currency"
page = Nokogiri::HTML(open(PAGE_URL))
puts page.css('title').text
puts '---------------------------'

name = page.css('table.default-table tr[data-currency="GBP"] td[1]').text
gbp = page.css('table.default-table tr[data-currency="GBP"] td[2]').text
eur_gbp = 1/gbp.to_f
t = Time.now
date = t.strftime("%d/%m/%Y")
time = t.strftime("%H:%M:%S")
puts name

puts "GBP/EUR #{gbp.to_f}"
puts  "EUR/GBP #{eur_gbp}"
puts t.strftime("Printed on %d/%m/%Y") 
puts t.strftime("at %H:%M:%S")

# Add data to .csv file 
history = CSV.open('pound.csv', 'a' ,:headers => true) do |csv|
	csv << [date,time,gbp.to_f,eur_gbp]
end 

def read_pound
	CSV.foreach('pound.csv') do |row|
  	puts row.inspect
	end
end

read_pound


