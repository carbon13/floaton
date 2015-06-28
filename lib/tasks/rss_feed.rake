# encoding: utf-8
require 'open-uri'
require 'nokogiri'
require 'json'

namespace :rss_feed do
  desc "To get rss feed from 'dailyfx.co.jp' ."

  urls = ['http://www.dailyfx.co.jp/article/fx-market-view/feed', 'http://www.dailyfx.co.jp/article/fx-ssi/feed']

  urls.each do |url|
    charset = nil
    source = open(url) do |f|
      charset = f.charset
      f.read
    end

    rss_feeds = Nokogiri::XML(source)

    task :get => :environment do
      rss_feeds.xpath('//item').each do |node|
        unless RssFeed.find_by(title: node.xpath('.//title').text)
          rss_feed = RssFeed.new
          rss_feed.title = node.xpath('.//title').text
          rss_feed.description = node.xpath('.//description').text
          rss_feed.link = node.xpath('.//link').text
          rss_feed.pubdate = Time.parse(node.xpath('.//pubDate').text)
          rss_feed.save 
        end
      end
    end
  end
end