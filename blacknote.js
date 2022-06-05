function arrayDiff(a, b) {
  b.map((num) => {
    a = a.filter((n) => n != num);
  });
  return a;
}

console.log(
  arrayDiff([13, -18, -16, -13, -10, 20, 15, -3, -8, -18, 0, -1, 20, 17, -17, 20], [13, -18, -16, -13, -10, 20, 15, -3])
);
