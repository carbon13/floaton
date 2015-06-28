class RssFeed < ActiveRecord::Base
  scope :newer, -> { order(pubdate: :desc) }
  scope :pickup, -> { newer.limit(10) }
end
