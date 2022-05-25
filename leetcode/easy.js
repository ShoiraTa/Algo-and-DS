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
