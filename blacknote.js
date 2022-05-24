var plusOne = function (digits) {
  let lastD = +digits.slice(-1) + 1;
  lastD != 10 ? digits.splice(-1, 1, lastD) : digits.splice(-1, 1, 1, 0);
  return digits;
};

console.log(plusOne([6, 1, 4, 5, 3, 9, 0, 1, 9, 5, 1, 8, 6, 7, 0, 5, 5, 4, 3]));
