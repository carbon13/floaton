class XchangesDecorator < Draper::CollectionDecorator

  def data_for_high_stock
    self.map{|xchange| Array[xchange.datetime.to_i*1000, xchange.rate]}
  end

end
