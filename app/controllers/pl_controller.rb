class PlController < ApplicationController

require 'nokogiri'
require 'open-uri'

  def table 
  	@table = []
  	doc = Nokogiri::HTML(open('http://www.espnfc.com/tables/_/league/eng.1/barclays-premier-league?cc=4716'))
	doc.xpath("//table[@class='tablehead']/tbody/tr").each do | element |
		@table << Table.new( \
			element.search("td[3]").text \
			, element.search("td[4]").text \
			, element.search("td[5]").text \
			, element.search("td[6]").text \
			, element.search("td[7]").text \
			, element.search("td[8]").text \
			, element.search("td[9]").text \
			, element.search("td[23]").text \
			, element.search("td[24]").text \
			)
	end
  end

  def fixtures
  end

  def results
  end

end
