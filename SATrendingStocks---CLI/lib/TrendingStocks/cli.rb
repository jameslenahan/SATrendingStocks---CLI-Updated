
class SA_Stocks::CLI

  def call
    list_companies
    more_details
    goodbye
  end

  def list_companies
    puts "Welcome to the Inc list scraper! See some of the trending companies on our site!"
    @companies = SA_Stocks::Company.trending
    @companies.each.with_index(1) do |company, i|
      puts "#{i}. #{company.name}"
    end
  end

  def more_details
    input = nil
    while input != "exit"
      puts "Which stock would you like to learn more about?"
      input = gets.strip.downcase

      if input.to_i > 0
        the_company = @companies[input.to_i-1]
        puts "Company name: '#{the_company.name} - Dividend amount: #{the_company.dividend} - Dividend yield: #{the_company.yield} - Market Cap: #{the_company.market_cap}"
      elsif input == "list"
        list_companies
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Come check in on trending companies whenever!"
  end
end
