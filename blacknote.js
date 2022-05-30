function isCoprime(x, y) {
  let xDivisors = [];
  let yDivisors = [];
  let commonD = [];

  const fn = (num, divisor) => {
    for (let i = 1; i <= num; i++) {
      if (num % i === 0) {
        divisor.push(i);
      }
    }
  };

  fn(x, xDivisors);
  fn(y, yDivisors);

  xDivisors.forEach((num, i) => {
    if (yDivisors.includes(num)) {
      commonD.push(num);
    }
  });

  return commonD.length === 1 ? true : false;
}

console.log(isCoprime(2, 28));
