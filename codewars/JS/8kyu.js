function findAverage(array) {
  return array.length == 0 ? 0 : array.reduce((acc, value) => acc + value ) / array.length;

}

console.log(findAverage([1,1,1]))