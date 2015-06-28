class RssFeedsDecorator < Draper::CollectionDecorator

  def list(added_class_attr = nil)
    class_attr = [:"rss-feed", added_class_attr].compact

    h.content_tag(:ul, class: class_attr) do
      self.each do |element|
        h.concat(h.content_tag(:li, h.link_to( element.title_formatted, element.link)))
      end
    end
  end

end
