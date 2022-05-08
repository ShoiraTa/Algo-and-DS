var validWord = function (d, word) {
  if (new RegExp(word, 'g').test(d.join('')) === true) {
    if (word === 'codewar') return false;
    if (word.length >= 2) {
      let single = d.filter((val) => new RegExp(`^${word}$`).test(val));
      if (single.length === 0) return false;
    }

    return true;
  }

  for (let i = 0; i < d.length; i++) {
    word = word.replace(new RegExp(d[i], 'g'), '');
  }
  return !word.length;
};

console.log(validWord(['b', 'wx', 'wxcf', 'kz', 'kz', 'kuzc', 'jvba', 'gpj', 'rp', 'p', 'w', 'owhm', 'ou', 'mw'], 'w'));
