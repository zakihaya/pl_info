# encoding: UTF-8

require 'nokogiri'
require 'open-uri'

module Scraper

	TARGET_TABLE_URL = 'http://www.espnfc.com/tables/_/league/eng.1/barclays-premier-league?cc=4716'
	TARGET_TABLE_ID  = '#Live_false_tableBody_1'

	def self.table_list
		
		doc = Nokogiri::HTML(open(TARGET_TABLE_URL))
		doc.xpath("//table[@class='tablehead']/tbody/tr").each do | element |
			tr_list << element.content
		end
	end


end
