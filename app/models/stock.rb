class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    lookup_up_stock = StockQuote::Stock.quote(ticker_symbol)
    return nil unless looked_up_stock.name

    new_stock = new(ticker: looked_up_stock.symbol, name:looked_up_stock.name)
    new_stock.last_price = new_stock.price
    new_stock
  end

  def price
    closing_price = StockQuote::Stock.quote(ticker).close
    return '#{}'
  end
end
