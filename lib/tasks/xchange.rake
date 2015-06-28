# encoding: utf-8
require 'open-uri'
require 'json'

namespace :xchange do
    desc "To get exchange rate from yahoo finance."

    url = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20%28%22USDJPY%22%29&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys'

    charset = nil
    source = open(url) do |f|
      charset = f.charset
      f.read
    end

    json = JSON.parser.new(source)
    query_hash = json.parse()
    results = query_hash['query']['results']

    task :get => :environment do
      xchange = Xchange.new({pair_id: results['rate']['id'], name: results['rate']['Name'], rate: results['rate']['Rate'], date: Date.strptime(results['rate']['Date'], '%m/%d/%Y'), time: Time.parse(results['rate']['Time']), ask: results['rate']['Ask'], bid: results['rate']['Bid']})
      xchange.save
    end
end