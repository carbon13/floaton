class DashbordController < ApplicationController

  def index
    @xchanges = Xchange.all
    @floaters = Floater.all
    @rss_feeds = RssFeed.newer.try(:decorate)

    @chart = LazyHighCharts::HighChart.new('chart') do |f|
      f.exporting(enabled: false)
      f.chart(height: '300')
      f.yAxis(title: {text: "exchange rate", margin: 20, style: { color: '#333'}})
      f.xAxis(type: 'datetime')
      f.rangeSelector(selected: 1, buttons: [{type: 'minute', count: 30, text: 'mi'}, {type: 'minute', count: 240, text: '1h'}, {type: 'day', count: 7, text: '1w'}, {type: 'day', count: 30, text: '1m'}, {type: 'month', count: 12, text: '1y'}, {type: 'all', count: 1, text: 'all'}],
                      buttonTheme: {fill: 'none', stroke: 'none', :'stroke-width' => 0, r: 8, style: {color: '#4679BD', fontWeight: 'bold'}, states: {hover: { }, select: {fill: '#4679BD', style: {color: 'white'}}}})
      f.legend(align: 'right', verticalAlign: 'top', y: 100, x: -50, layout: 'vertical')
      f.series(name: 'USDJPY', data: @xchanges.usdjpy.try(:decorate).data_for_high_stock)
      f.series(name: 'EURJPY', data: @xchanges.eurjpy.try(:decorate).data_for_high_stock)
      f.series(name: 'AUDJPY', data: @xchanges.audjpy.try(:decorate).data_for_high_stock)

      p @xchanges.usdjpy.try(:decorate).data_for_high_stock

      # Create floater series
      @floaters.each do |floater|
        f.series(name: 'Floater #' + floater.id.to_s, data: [[floater.start_at.to_i, floater.value], [floater.end_at.to_i, floater.value]], color: '#ccc', linewidth: 0.1, dashStyle: 'solid')
      end
    end
  end

end
