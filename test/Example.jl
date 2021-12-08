import Pkg;
Pkg.add(path="../LimitOrderBook.jl")
# adding package
using LimitOrderBook, Random

# initiallize a struct && its data type
MyLOBType = OrderBook{Int64,Float32,Int64,Int64} # define LOB type
ob = MyLOBType() # initialize order book
Random.seed!(404)
# fill book with random limit orders
randspread() = ceil(-0.05*log(rand()),digits=2)
# rand() Generating something else than one float from [0, 1[ interval

# digit = 2: number of digits after the point
rand_side() = rand([BUY_ORDER,SELL_ORDER])
# randomly pop out Buy_order or the sell_order
for i=1:1000
    # add some limit orders
    # rand(0:10:20) [0,20] 10 interval
    submit_limit_order!(ob,2i,BUY_ORDER,99.0-randspread(),rand(5:5:20))
    submit_limit_order!(ob,3i,SELL_ORDER,99.0+randspread(),rand(5:5:20))
    if (rand() < 0.1) # and some market orders
        submit_market_order!(ob,rand_side(),rand(10:25:150))
    end
end

submit_limit_order!(ob,111,SELL_ORDER,99.05,10) # submit an order
cancel_order!(ob,111,SELL_ORDER,99.05) # now cancel it

ob # show state of the book
