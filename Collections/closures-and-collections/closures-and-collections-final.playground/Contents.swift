let names = ["Zeplin", "Banford", "Applejohn", "Cutford"]
names.sorted()

names.sorted(by: { a, b in
  a > b
})

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

let largePrices = prices.filter { price -> Bool in
  return price > 5
}

let salePrices = prices.map { price -> Double in
  return price * 0.9
}

let sum = prices.reduce(0) { result, price -> Double in
  return result + price
}

var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) { result, pair -> Double in
  return result + (pair.key * Double(pair.value))
}

