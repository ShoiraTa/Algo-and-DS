// function max(array) {
//   if (array.length <= 0) return -Infinity;
//   const maxI = 0;
//   const helper = (newArr) => {
//     if (newArr.length <= 1) return 1;
//     if (maxI < newArr[0]) maxI = newArr[0];
//     helper(newArr.slice(1));
//   };
//   helper(array);
//   return maxI;
// }
// console.log(max([1, 3]));

var isPalindrome = function (x) {
  console.log(String(x).split('').reverse().join(''));
  return String(x).split('').reverse().join('') == x ? true : false;
};
console.log(isPalindrome(1213));
