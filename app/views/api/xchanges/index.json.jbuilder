json.array!(@xchanges) do |xchange|
  datetime = DateTime.new(xchange.date.year, xchange.date.month, xchange.date.day, xchange.time.hour, xchange.time.min).to_i

  json.set! :datetime, datetime
  json.set! :rate, xchange.rate

end