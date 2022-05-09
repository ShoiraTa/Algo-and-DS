function findChildren(dancingBrigade) {
  const arr = dancingBrigade
    .split('')
    .sort((a, b) => a.toLowerCase().localeCompare(b.toLowerCase()) || b.localeCompare(a));
  return arr.join('');
}

console.log(findChildren('beeeEBb'));
