require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
#puts page.class   # => Nokogiri::HTML::Document

def get_names() 
	puts "blabla"
	names = Array.new 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

	nameS_crypto = page.xpath('///tbody/tr/td[@class = "no-wrap currency-name"]/a[@class ="currency-name-container link-secondary"]').each do 
	|name_crypto|	

	get_names = name_crypto.text #(ça recup au format txt)

	get_names.push(get_names)

	return get_names
end



def get_currencies() 
	puts 'blablbli'
	currencies = Array.new 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
	currency = page.xpath('///tbody/tr/td[@class= "no-wrap market-cap texte-right"]/a[@class ="data-currency-code="USD"]').each do 
	|currency_crypto|

	get_currencies = currency_crypto.float

	get_currencies.push(get_currencies)

	return get_currencies
end 

#DESOLEE JAI VRAIMENT GALERE((((



=begin
	
 1) Isoler les éléments HTML qui vont bien, 
 2) En extraire le texte et mettre ça dans un hash,
 3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé. 
# =end