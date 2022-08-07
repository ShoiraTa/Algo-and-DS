const simpleRecursion = (num) => {
  if (num <= 0) return;
  num--;
  simpleRecursion(num);
};

// ----------------------------------------------------------//

const levelTwoRecursion = (num) => {
  if (num <= 1) return 1;
  return num + levelTwoRecursion(num - 1);
};

// ----------------------------------------------------------//

const recursionWithHelper = (arr) => {
  let final = [];

  const helper = (newArr) => {
    if (newArr.length <= 0) return;
    newArr[0] % 2 === 0 ? (final = [...final, 'even']) : (final = [...final, 'odd']);
    helper(newArr.slice(1));
  };

  helper(arr);
  return final;
};

// ----------------------------------------------------------//

var reverseStr = function (s) {
  return s === '' ? '' : reverseStr(s.substr(1)) + s.charAt(0);
};

// ------------------------------------------------------------//

var reverseArray = function (s) {
  if (s.length <= 0) return '';
  let res = [s[s.length - 1] + reverseArray(s.slice(0, -1))];
  return res;
};

// ------------------------------------------------------------//
var reverseString = function (s) {
  let first = 0;
  let last = s.length - 1;

  while (first <= last) {
    let temp = s[first];
    s[first] = s[last];
    s[last] = temp;
    first++;
    last--;
  }

  return s;
};
