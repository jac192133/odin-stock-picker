# ruby stock_picker.rb
require 'pry-byebug'

# given stocks, index = day
stock_array = [17,3,6,9,15,8,6,1,10]

# main method
def stock_picker(stocks)

    # create holders for price, day, profit, and best_days
    min_price = stocks[0]
    min_day = 0

    profit = 0
    best_days = []

    # loop through stocks
    stocks.each_with_index do |price, day|

        # the price is cheaper than current cheapest, keep it
        if price < min_price
            min_price = price
            min_day = day
        end

        # determine max profit
        if price - min_price > profit
            profit = price - min_price
            best_days = [min_day, day]
        end
    end

    # return result
    best_days

end

puts stock_picker(stock_array)