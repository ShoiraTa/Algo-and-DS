var romanToInt = function (s) {
  const obj = { 1: 'I', 5: 'V', 10: 'X', 50: 'L', 100: 'C', 500: 'D', 1000: 'M' };
  let sArr = s.split('');
  let total = '';

  sArr.map((_, i) => {
    let current = obj[sArr[i]];
    let next = obj[sArr[i + 1]];
    current < next ? (total -= current) : (total += current);
  });

  return total;
};

console.log(romanToInt('33'));
