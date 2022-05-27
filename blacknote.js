var longestCommonPrefix = function (strs) {
  let min = strs.sort((a, b) => a.length - b.length)[0];
  min.split('').forEach((l, i) => {
    for (let y = 0; y < strs.length; y++) {
      if (l !== strs[y][i]) {
        min = min.slice(0, i);
      }
    }
  });
  return min;
};

console.log(longestCommonPrefix(['flower', 'flow', 'flight']));
