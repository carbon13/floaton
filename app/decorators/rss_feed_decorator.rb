class RssFeedDecorator < Draper::Decorator
  delegate_all

  def title_formatted
    pubdate_formatted + ' ' + self.title
  end

  def pubdate_formatted
    l self.pubdate.to_date, format: :semishort
  end

  def pubdate_epoch_formatted
    self.pubdate.to_i * 1000
  end

end
