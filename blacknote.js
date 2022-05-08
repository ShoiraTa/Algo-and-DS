var runLengthEncoding = function (str) {
  let count = 1;
  return str.split('').reduce((arr, letter, i, array) => {
    if (letter !== array[i + 1]) {
      arr.push([letter, count]);
      count = 1;
    } else count += 1;
    return arr;
  }, []);
};
console.log(runLengthEncoding('aab'));
