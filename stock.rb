def stock_picker(prices)
  greatest_dif = 0
  current_purchase_day = 0

  while current_purchase_day < prices.size-1
    probable_sale_day = current_purchase_day + 1

    while probable_sale_day < prices.size
      difference_now = prices[probable_sale_day] - prices[current_purchase_day]

      if difference_now > greatest_dif
        greatest_dif = difference_now
        best_buy_day = current_purchase_day
        best_sale_day = probable_sale_day
      end

      probable_sale_day += 1
    end

    current_purchase_day += 1
  end

  puts "The best buy day is day " + best_buy_day.to_s + " and then sell at day " + best_sale_day.to_s + " for a total profit of " + greatest_dif.to_s + "$."
end

stock_picker([17,3,6,9,15,8,6,1,10])
