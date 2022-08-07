let users = {
  Alan: {
    age: 27,
    online: true,
  },
  Jeff: {
    age: 32,
    online: true,
  },
};

// Check for  key
users.hasOwnProperty('Alani');
// false
'Alan' in users;
// true

// delete
delete users.Alan;

// update

users.Alina = {
  age: 35,
  online: true,
};

for (let user in users) {
  // console.log(users[user].age);
}

// Object.keys()
