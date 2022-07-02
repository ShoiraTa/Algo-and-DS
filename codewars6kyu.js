// goodVsEvil
function goodVsEvil(good, evil) {
  const goodsScore = [1, 2, 3, 3, 4, 10];
  const evilsScore = [1, 2, 2, 2, 3, 5, 10];

  let goodsCurrentScore = 0;
  let evilsCurrentScore = 0;

  const goods = good.split(' ');
  const evils = evil.split(' ');

  const calcScore = (side, total, scores) => {
    for (let g = 0; g <= side.length; g++) {
      if (side[g] >= 1) {
        total += scores[g] * side[g];
        console.log(total);
      }
    }
    return total;
  };

  goodsCurrentScore = calcScore(goods, goodsCurrentScore, goodsScore);
  evilsCurrentScore = calcScore(evils, evilsCurrentScore, evilsScore);

  return goodsCurrentScore === evilsCurrentScore
    ? 'Battle Result: No victor on this battle field'
    : goodsCurrentScore > evilsCurrentScore
    ? 'Battle Result: Good triumphs over Evil'
    : 'Battle Result: Evil eradicates all trace of Good';
}

// OOP

class Person {
  constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}

Object.defineProperty(Person.prototype, 'name', {
  get: function () {
    return `${this.firstName} ${this.lastName}`;
  },

  set: function (name) {
    let splited = name.split(' ');
    this.firstName = splited[0];
    this.lastName = splited[1];
    return this.firstName + this.lastName;
  },
});

let newPerson = new Person('Augustus', 'Cole');
newPerson.name = 'Coleee Train';

// random
function generateName() {
  let string = Math.random().toString(36);
  return string;
}
