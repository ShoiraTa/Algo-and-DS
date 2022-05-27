// isPalindrome
var isPalindrome = function (x) {
  console.log(String(x).split('').reverse().join(''));
  return String(x).split('').reverse().join('') == x ? true : false;
};

// plusOne
var plusOne = function (digits) {
  for (let i = digits.length - 1; i >= 0; i--) {
    digits[i]++;
    if (digits[i] < 10) {
      return digits;
    } else {
      digits[i] = 0;
    }
  }
  digits.unshift(1);
  return digits;
};

// longestCommonPrefix
var longestCommonPrefix = function (strs) {
  let min = strs.sort((a, b) => a.length - b.length)[0];
  min.split('').forEach((l, i) => {
    for (let y = 0; y < strs.length; y++) {
      if (l !== strs[y][i]) {
        min = min.slice(0, i);
      }
    }
  });
  return min;
};
