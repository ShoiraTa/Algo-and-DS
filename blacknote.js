function numberOfPairs(gloves) {
  let obj = {},
    res = 0;

  gloves.forEach((glove) => {
    obj = {
      ...obj,
      [glove]: obj[glove] ? (obj[glove] += 1) : 1,
    };
  });

  for (let value in obj) {
    res += obj[value] % 2 === 0 ? obj[value] / 2 : (obj[value] - 1) / 2;
  }

  console.log([...new Set(gloves)]);
  return res;
}

console.log(
  numberOfPairs([
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
    'black',
    'gray',
    'black',
    'purple',
    'purple',
    'gray',
  ])
);
