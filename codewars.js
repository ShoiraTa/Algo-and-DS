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

// Break camelCase

const solution1 = (str) => {
  const fn = str.split('').reduce((final, letter) => {
    letter.match(/[A-Z]/) ? final.push(` ${letter}`) : final.push(letter);
    return final;
  }, []);

  return fn.join('');
};

// smart:
const solution2 = (string) => {
  return string.replace(/(?=[A-Z])/g, ' ');
};

//Convert number to reversed array of digits
function digitize(n) {
  return n.toString().split('').reverse().map(Number);
}

// isNarcissistic
function isNarcissistic1(n) {
  let nToArr = n.toString().split('').map(Number);
  const fn = nToArr.reduce((total, num) => {
    return (total += Math.pow(num, nToArr.length));
  }, 0);
  console.log(fn);
  return fn === n ? true : false;
}

// smart
function isNarcissistic(n) {
  return (
    n ===
    n
      .toString()
      .split('')
      .reduce((res, num, index, arr) => (res += Math.pow(num, arr.length)), 0)
  );
}

//  multiplies of 3 and 5
function solution(number) {
  let total = 0;
  for (let i = 0; i < number; i++) {
    if (i % 3 === 0 || i % 5 === 0 || (i % 3 === 0 && i % 5 === 0)) {
      total += i;
    }
  }
  return total;
}

// Sum of all arguments
function sum() {
  return Array.prototype.reduce.call(
    arguments,
    function (a, b) {
      return a + b;
    },
    0
  );
}

// betterThanAverage 8
function betterThanAverage(classPoints, yourPoints) {
  const avg = classPoints.reduce((total, score) => (total += score));
  console.log(avg / classPoints.length);
  return avg / classPoints.length > yourPoints ? false : true;
}

// smart
function betterThanAverage1(classPoints, yourPoints) {
  return yourPoints > classPoints.reduce((a, b) => a + b, 0) / classPoints.length;
}

// Sort Numbers 7
function solution(nums) {
  if (nums === null) return [];
  return nums.join('') == 0 ? [] : nums.sort((a, b) => a - b);
}

// String cleaning
function stringClean(s) {
  return s
    .split('')
    .filter((el) => /[^0-9]/.test(el))
    .join('');
}

// smart

function stringClean1(s) {
  return s.replace(/\d/g, '');
}

// PRint count of chars on string

function charCount(str) {
  let count = {};
  // for (let char of arr){}
  // for (let char in obj){}
  str
    .toLowerCase()
    .split('')
    .map((element) => {
      if (/[a-z]/.test(element) == true) {
        count[element] = ++count[element] || 1;
      }
    });
  return count;
}

// Remove dublicates
function sumUniq(a) {
  return Array.from(new Set(a));
}

// Sum of unque vals
function sumUniq2(a) {
  return a.reduce((acc, val) => {
    return val > 0 ? (acc += val) : acc;
  }, 0);
}

//
const multiplyAll = (array) => (int) => array.map((number) => number * int);
// OR

function multiplyAll2(arr) {
  return function (n) {
    return arr.map((x) => x * n);
  };
}

// return length of shortest word in string

function findShort(s) {
  return s.split(' ').sort((a, b) => a.length - b.length)[0].length;
}

// Objects ////////////
const whosOnline = (friends) => {
  return friends.reduce((obj, { username, status, lastActivity }) => {
    const stat = status === 'online' && lastActivity > 10 ? 'away' : status;
    return { ...obj, [stat]: obj[stat] ? [...obj[stat], username] : [username] };
  }, {});
};

// maxPossibleScore
function maxPossibleScore(obj, arr) {
  let total = 0;
  for (var key in obj) {
    var val = obj[key];
    total += arr.toString().includes(key) ? val * 2 : val;
  }
  return total;
}
//  reduce object
function maxPossibleScore1(obj, arr) {
  return Object.keys(obj).reduce((acc, key) => {
    const val = obj[key];
    acc += arr.toString().includes(key) ? val * 2 : val;
    return acc;
  }, 0);
}

//
function arithmetic(a, b, operator) {
  const operations = { add: '+', subtract: '-', multiply: '*', divide: '/' };
  return eval(a + operations[operator] + b);
}

const arithmetic2 = (a, b, operator) => {
  const functions = {
    add: (a, b) => a + b,
    subtract: (a, b) => a - b,
    multiply: (a, b) => a * b,
    divide: (a, b) => a / b,
  };

  return functions[operator](a, b);
};

//
function killer(suspectInfo, dead) {
  const count = Object.keys(suspectInfo).reduce((obj, name) => {
    const val = suspectInfo[name];
    obj = { ...obj, [name]: 0 };
    dead.forEach((d) => {
      obj = val.includes(d) ? { ...obj, [name]: obj[name] + 1 } : { ...obj };
    });
    return obj;
  }, {});
  return Object.keys(count).sort((a, b) => count[b] - count[a])[0];
}

//
function numObj(s) {
  return s.reduce((obj, num) => {
    return [...obj, { [num]: String.fromCharCode(num) }];
  }, []);
}
