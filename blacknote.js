function well(x) {
  let count = 0;
  for (let i = 0; i < x.length; i++) {
    console.log(x[i]);
    x[i].forEach((el) => {
      if (/good/i.test(el)) count++;
    });
  }
  return count === 0 ? 'Fail!' : count > 2 ? 'I smell a series!' : 'Publish!';
}

console.log(well([['gOOd', 'bAd', 'BAD', 'bad', 'GOOD'], ['bad'], ['gOOd', 'BAD']]));
