function arithmetic(a, b, operator) {
  const operations = { add: '+', subtract: '-', multiply: '*', divide: '/' };
  return eval(a + operations[operator] + b);
}
console.log(arithmetic(1, 2, 'add'));
