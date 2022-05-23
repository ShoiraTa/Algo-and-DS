const simpleRecursion = (num) => {
  if (num <= 0) return;
  console.log(num);
  num--;
  simpleRecursion(num);
};

// ------------------------------------------------------------

const levelTwoRecursion = (num) => {
  if (num <= 1) return 1;
  // console.log(num);
  return num + levelTwoRecursion(num - 1);
};

const factorial = (num) => {
  if (num <= 1) return 1;
  return num * factorial(num - 1);
};

// ------------------------------------------------------------

const recursionWithHelper = (arr) => {
  let final = [];

  const helper = (newArr) => {
    if (newArr.length <= 0) return;
    newArr[0] % 2 === 0 ? (final = [...final, 'even']) : (final = [...final, 'odd']);
    helper(newArr.slice(1));
  };

  helper(arr);
  return final;
};

console.log(recursionWithHelper([1, 2, 3, 4]));
