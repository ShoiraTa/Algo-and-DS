function minSum(arr) {
  const sorted = arr.sort((a, b) => a - b);
  let total = 0;
  let length = arr.length / 2;
  for (let i = 1; i <= length; i++) {
    total += sorted[0] * sorted[sorted.length - 1];
    sorted.shift();
    sorted.pop();
  }
  return total;
}

console.log(minSum([9, 2, 8, 7, 5, 4, 0, 6]));
