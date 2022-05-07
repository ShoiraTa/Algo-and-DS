function numObj(s) {
  return s.reduce((obj, num) => {
    return [...obj, { [num]: String.fromCharCode(num) }];
  }, []);
}
console.log(numObj([118, 117, 120]));
