#!require '/usr/bin/env ruby'

require "bundler/setup"
require "TrendingStocks.rb"

SA_Stocks::CLI.new.call
