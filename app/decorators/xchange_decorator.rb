class XchangeDecorator < Draper::Decorator
  delegate_all
  
  def datetime
    datetime = DateTime.new(xchange.date.year, xchange.date.month, xchange.date.day, xchange.time.hour, xchange.time.min)
  end

end
