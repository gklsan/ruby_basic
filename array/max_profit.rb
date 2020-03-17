# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

# Example 1:

# Input: [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
#              Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Example 2:

# Input: [1,2,3,4,5]
# Output: 4
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
#              Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
#              engaging multiple transactions at the same time. You must sell before buying again.
# Example 3:

# Input: [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.


# Solution 1
def max_profit_1(prices)
  sum = 0
  (1...prices.length).each do |i|
    sum += [prices[i] - prices[i-1], 0].max
  end
  sum
end

# Solution 2
def max_profit_2(prices)
  profit = 0
  buy_value = prices.sum
  
  prices.each do |price|
    if price < buy_value
      buy_value = price
    end
    profit = profit + (price - buy_value)
    buy_value = price
  end
  profit
end


# Solution 3
def max_profit_3(prices)
    max_profit = 0
    prices.each_with_index do |price, i|
        next if i==0
        difference = price - prices[i-1]
        max_profit += difference if difference > 0
    end
    max_profit
end


p max_profit_1([7,1,5,3,6,4])
p max_profit_2([7,1,5,3,6,4])
p max_profit_3([7,1,5,3,6,4])
