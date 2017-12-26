require 'stock_quote'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  i = 0 
  stock = StockQuote::Stock.quote("#{params[:stock_code]}")
  @exchange = stock[i].e
  @id = stock[i].id
  @reuters = stock[i].f_reuters_url
  @name = stock[i].name
  @symb = stock[i].symbol
  @price = stock[i].l
  @cp = stock[i].cp
  @c = stock[i].c
  @hi52 = stock[i].hi52
  @lo52 = stock[i].lo52
  @market_cap = stock[i].mc
  @beta = stock[i].beta
  @dividend_yd = stock[i].dy
  @shares = stock[i].shares
  @pe = stock[i].pe
  @eps = stock[i].eps
  @ldiv = stock[i].ldiv
  @instown = stock[i].instown
  @sname = stock[i].sname
  @iname = stock[i].iname
  @open = stock[i].op
  @hi = stock[i].hi
  @lo = stock[i].lo
  @vo = stock[i].vo
  @avvo = stock[i].avvo
  
  i = 1 
  stock = StockQuote::Stock.quote("#{params[:stock_code]}")
  @exchange1 = stock[i].e
  @id1 = stock[i].id
  @reuters1 = stock[i].f_reuters_url
  @name1 = stock[i].name
  @symb1 = stock[i].symbol
  @price1 = stock[i].l
  @cp1 = stock[i].cp
  @c1 = stock[i].c
  @hi521 = stock[i].hi52
  @lo521 = stock[i].lo52
  @market_cap1 = stock[i].mc
  @beta1 = stock[i].beta
  @dividend_yd1 = stock[i].dy
  @shares1 = stock[i].shares
  @pe1 = stock[i].pe
  @eps1 = stock[i].eps
  @ldiv1 = stock[i].ldiv
  @instown1 = stock[i].instown
  @sname1 = stock[i].sname
  @iname1 = stock[i].iname
  @open1 = stock[i].op
  @hi1 = stock[i].hi
  @lo1 = stock[i].lo
  @vo1 = stock[i].vo
  @avvo1 = stock[i].avvo
  erb(:index) 
end