// FOR EACH  & REDUCE 
let items = [
  {name: 'Rice', price: 5},
  {name: 'Book', price: 7},
  {name: 'Chicken', price: 8},
  {name: 'bread', price: 3},
]
// FOR EACH
let priceForEach = 0
items.forEach((item) => priceForEach += item.price)

// REDUCE

const priceReducer = items.reduce((total, item) => {
  return total + item.price
}, 0)

// console.log(priceReducer)

