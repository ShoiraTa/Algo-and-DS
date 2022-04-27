function charCount(str) {
  let count = {};
  str
    .toLowerCase()
    .split('')
    .map((element) => {
      if (/[a-z]/.test(element) == true) {
        count[element] = ++count[element] || 1;
      }
    });
  return count;
}

console.log(charCount('helloo o!sdfsdasda'));
