require OpenSSL
class SA_Stocks::Company
  attr_accessor :name, :dividend, :yield, :market_cap

  def self.trending
    self.scrape_companies
  end

  def self.scrape_companies
    companies = []

    companies << self.company1_details
    companies << self.company2_details
    companies << self.company3_details
    companies << self.company4_details

    companies
  end
  def self.company1_details
    page = Nokogiri::HTML(open("https://seekingalpha.com", ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'firefox'))
    symbol = page.search("//*[@id='page_content_wrapper']/div[2]/div[2]/section[4]/div[2]/span[1]/a").text
    doc = Nokogiri::HTML(open("https://seekingalpha.com/symbol/#{symbol}"))
    company = self.new
    company.name = doc.search("//*[@id='main_content']/div[1]/div[1]/h1").text
    company.dividend = doc.search("//*[@id='quotes-chart-data']/div[5]/span[2]").text
    company.yield = doc.search("//*[@id='quotes-chart-data']/div[6]/span[2]").text
    company.market_cap = doc.search("//*[@id='quotes-chart-data']/div[7]/span[2]").text
    company
  end

  def self.company2_details
    page = Nokogiri::HTML(open("https://seekingalpha.com", ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'firefox'))
    symbol = page.search("//*[@id='page_content_wrapper']/div[2]/div[2]/section[4]/div[3]/span[1]/a").text
    doc = Nokogiri::HTML(open("https://seekingalpha.com/symbol/#{symbol}"))
    company = self.new
    company.name = doc.search("//*[@id='main_content']/div[1]/div[1]/h1").text
    company.dividend = doc.search("//*[@id='quotes-chart-data']/div[5]/span[2]").text
    company.yield = doc.search("//*[@id='quotes-chart-data']/div[6]/span[2]").text
    company.market_cap = doc.search("//*[@id='quotes-chart-data']/div[7]/span[2]").text
    company
  end

  def self.company3_details
    page = Nokogiri::HTML(open("https://seekingalpha.com", ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'firefox'))
    symbol = page.search("//*[@id='page_content_wrapper']/div[2]/div[2]/section[4]/div[4]/span[1]/a").text
    doc = Nokogiri::HTML(open("https://seekingalpha.com/symbol/#{symbol}"))
    company = self.new
    company.name = doc.search("//*[@id='main_content']/div[1]/div[1]/h1").text
    company.dividend = doc.search("//*[@id='quotes-chart-data']/div[5]/span[2]").text
    company.yield = doc.search("//*[@id='quotes-chart-data']/div[6]/span[2]").text
    company.market_cap = doc.search("//*[@id='quotes-chart-data']/div[7]/span[2]").text
    company
  end
  def self.company4_details
    page = Nokogiri::HTML(open("https://seekingalpha.com", ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'firefox'))
    symbol = page.search("//*[@id='page_content_wrapper']/div[2]/div[2]/section[4]/div[5]/span[1]/a").text
    doc = Nokogiri::HTML(open("https://seekingalpha.com/symbol/#{symbol}"))
    company = self.new
    company.name = doc.search("//*[@id='main_content']/div[1]/div[1]/h1").text
    company.dividend = doc.search("//*[@id='quotes-chart-data']/div[5]/span[2]").text
    company.yield = doc.search("//*[@id='quotes-chart-data']/div[6]/span[2]").text
    company.market_cap = doc.search("//*[@id='quotes-chart-data']/div[7]/span[2]").text
    company
  end
end
