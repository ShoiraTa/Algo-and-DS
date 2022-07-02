// Create a base class called Monster. It has a constructor that  receives type and color. There is a third property that is isScary that by default it’s value is True.

// Create a child class that extends from Monster.

// It must be called Dragon. It has a constructor that receives type, color and element.

// It must have the following  additional methods

// fly : The dragon ${this.color} of ${this.element}  and ${this.type} flaps its wings and begins to fly.

// breathFire: The dragon ${this.color} of ${this.element} and ${this.type} release a stream of fire from its mouth.

// Create a child class that extends from Monster, it must be called Werewolf.

// It has a constructor that receives type and color.

// It must have the following additional method.

// Howl:  The  werewolf ${this.type} howls loudly.

// Create a child class that extends from Monster, it must be called Spider.

// It has a constructor that receives type, color and size

// It must have the following additional method.

// Bite:  The spider ${this.size}  and ${this.color} ${this.type} will bite and poison you..

// From Here the child classes must be able to Roar and the personal behaviors of each monster type.

// class Monster {
//   constructor(type, color, isScary = true) {
//     (this.type = type), (this.color = color);
//   }
// }

// class Dragon extends Monster {
//   constructor(type, color) {
//     (this.type = type), (this.color = color);
//   }
//   fly() {
//     return ` The dragon ${this.color} of ${this.element}  and ${this.type} flaps its wings and begins to fly. `;
//   }

//   breathFire() {
//     return `The dragon ${this.color} of ${this.element} and ${this.type} release a stream of fire from its mouth.`;
//   }
// }

// class Werewolf extends Monster {
//   constructor(type, color) {
//     (this.type = type), (this.color = color);
//   }
//   howl() {
//     return `The  werewolf ${this.type} howls loudly.`;
//   }
// }

// class Spider extends Monster {
//   constructor(type, color, size) {
//     (this.type = type), (this.color = color);
//     this.size = size;
//   }
//   bite() {
//     return `The spider ${this.size}  and ${this.color} ${this.type} will bite and poison you..`;
//   }
// }

class Animal {
  constructor(name) {
    this.name = name;
  }
}

class Bear extends Animal {
  constructor(name, age) {
    super(name);
    this.age = age;
  }
}

let bear = new Bear('great', 18);

console.log(bear);
