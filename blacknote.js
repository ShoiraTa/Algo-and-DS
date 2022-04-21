
// 1.
// console.log(parseInt(100) === '100')
// console.log(parseInt('100km') )
// console.log(parseInt('$100'))
// console.log(parseInt('180.727.312'))
// console.log(parseFloat('180.727.312'))

// 2.
// const testNum  = 123
// console.log(typeof (testNum.toString()))
// '123'

// 3.
// function fn (from, till, step = 3) {
//   let myvar = 100
//   alert(from+ '-'+till * myvar)
// }
// fn(1,20,5)

// 4. 
// let ml = (first = 1, second =2) => first*second
// console.log(ml(3,5))
// 15

// 5.

// console.log(isNaN(NaN) )
// console.log(isNaN(true) )
// console.log(isNaN('NaN') )
// console.log(NaN === NaN )

// 6.
// let fn  = function (){
//   console.log('hi there')
// }
// fn = 'str'
// console.log(fn)

// 7.
// function fn () {
//   console.log('1')
//   return'hey'
//   console.log('2')
// }

// fn ()

// 8. 
// let fun = function fn () {
//  alert('1')
// }
// fun()
// fun = 'String'

// 9.
// console.log(fun)
// const  fun = function fn () {
//    console.log('1')
//   }
//   fun()

// 10
// let ml = (first = 1, second = 2) => {first * second}
// console.log(ml(3,5))

// console.log(Math.floor(12.523145))

// let secretPhrase = 'It is a secret'
// console.log(secretPhrase.slice(6) === 'a secret')
// console.log(secretPhrase.slice(3, 6) === 'is')
// console.log(secretPhrase.substr(2, 4) === ' is ' )

// 
// let ml = (first = 1, second = 2) => console.log(first * second)
// ml()

// let func = function fn () {
//   console.log('he')
// }

// func = 'str'

// func()

// fn()
// alert(n)

function cake(x, y){
  let total = 0
  
  for(let i = 0; i < y.length; i++){
    if (i % 2 == 1){
      total += y[i].charCodeAt(0) 
    } 
  }
  console.log(total)

  // console.log(((total/100) * x) > 70 ?  'Fire!' : 'That was close!')
  return (total/100) * x
}


cake(900, 'abcdef')
cake(56, 'ifkhchlhfd')