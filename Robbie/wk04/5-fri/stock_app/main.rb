require 'stock_quote'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  stock = StockQuote::Stock.quote("#{params[:stock_code]}")
  @exchange = stock.e
  @id = stock.id
  @reuters = stock.f_reuters_url
  @name = stock.name
  @symb = stock.symbol
  @price = stock.l
  @cp = stock.cp
  @c = stock.c
  @hi52 = stock.hi52
  @lo52 = stock.lo52
  @market_cap = stock.mc
  @beta = stock.beta
  @dividend_yd = stock.dy
  @shares = stock.shares
  @pe = stock.pe
  @eps = stock.eps
  @ldiv = stock.ldiv
  @instown = stock.instown
  @sname = stock.sname
  @iname = stock.iname
  @open = stock.op
  @hi = stock.hi
  @lo = stock.lo
  @vo = stock.vo
  @avvo = stock.avvo
  erb(:index)

end