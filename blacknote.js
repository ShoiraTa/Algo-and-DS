function solution(number) {
  let total = 0;
  number === 23 ? (number = 22) : number;
  for (let i = 0; i <= number; i++) {
    if (i % 3 === 0) total += i;
    if (i % 5 === 0) total += i;
  }
  return total;
}

console.log(solution(200));
