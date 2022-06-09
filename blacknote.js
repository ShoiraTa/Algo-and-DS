var lcm = function () {
  let nums = [];
  for (let i = 0; i < arguments.length; i++) {
    nums.push(arguments[i]);
  }
  let gcd = gcd(...nums);

  return nums.reduce((a, b) => a * b) / gcd;
};

console.log(lcm(2, 4, 3));
