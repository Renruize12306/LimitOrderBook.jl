module LimitOrderBook
    import Base.@kwdef
    include("orderqueue.jl")
    include("sidebook.jl")
    include("book.jl")
    export OrderBook, Order, AcctMap, 
        submit_limit_order!, cancel_limit_order!, submit_market_order!, submit_market_order_byfunds!
        book_depth_info, volume_bid_ask, best_bid_ask, n_orders_bid_ask, 
        get_acct, write_csv, order_types
end