//  Binary
const binary = (sortedArr, el) => {
  let start = sortedArr[0];
  let end = sortedArr.length - 1;
  let middle = Math.floor((start + end) / 2);

  while (sortedArr[middle] !== el && start <= end) {
    if (sortedArr[middle] > el) end = middle - 1;
    else start = middle + 1;
    middle = Math.floor((start + end) / 2);
  }

  return sortedArr[middle] === el ? middle : -1;
};

const strSearch = (strArr, word) => {};
