var isPalindrome = function (x) {
  console.log(String(x).split('').reverse().join(''));
  return String(x).split('').reverse().join('') == x ? true : false;
};
