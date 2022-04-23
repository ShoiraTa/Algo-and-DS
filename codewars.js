// BIRTHDAY CKAE I
function cake(x, y) {
  const t = y.split('').reduce((t, l, i) => t + (i % 2 === 0 ? l.charCodeAt(0) : l.charCodeAt(0) - 96), 0);
  x * 0.7 > t ? 'That was close!' : 'Fire!';
}
cake(900, 'abcdef');
cake(56, 'ifkhchlhfd');
cake(256, 'aaaaaddddr');

// Get the Middle Character
function getMiddle(s) {
  let length = s.length;
  let p;
  let l;
  if (length % 2 == 1) {
    p = length / 2;
    l = 1;
  } else {
    p = length / 2 - 1;
    l = 2;
  }
  return s.substring(p, p + l);
}

getMiddle('test');
getMiddle('testing');

// Filter the number
var FilterString = function (value) {
  return value
    .split('')
    .filter((el) => /\d/.test(el))
    .join('');
};
// Fizz Buzz

function digits(n) {
  for (let i = 1; i <= n; i++) {
    let print = '';
    if (i % 3 == 0) print = 'Fizz';
    if (i % 5 == 0) print = 'Buzz';
    if (i % 3 == 0 && i % 5 == 0) print = 'FizzBuzz';
    console.log(print || i);
  }
}

// humanYearsCatYearsDogYears
var humanYearsCatYearsDogYears = function (humanYears) {
  if (humanYears === 1) return [humanYears, 15, 15];
  if (humanYears === 2) return [humanYears, 15 + 9, 15 + 9];
  return [humanYears, 24 + (humanYears - 2) * 4, 24 + (humanYears - 2) * 5];
};

// duplicateCount

function duplicateCount(text) {
  if (text == '') return 0;
  let t = text.toLowerCase().split('').sort();
  let letters = [];
  let count = t.reduce((total, letter, i) => {
    let prev = t[i - 1];
    if (prev == letter && !letters.includes(prev)) {
      if (letters.includes(letter)) return;
      total += 1;
      letters.push(prev);
    }
    return total;
  }, 0);

  return count;
}

// duplicateCount
function duplicateCount(text) {
  return (
    text
      .toLowerCase()
      .split('')
      .sort()
      .join('')
      .match(/([^])\1+/g) || []
  ).length;
}

// findOutlier
function findOutlier(integers) {
  let odd = [];
  let even = [];

  integers.forEach((number) => {
    number % 2 === 0 ? even.push(number) : odd.push(number);
  });

  return odd.length === 1 ? odd[0] : even[0];
}
