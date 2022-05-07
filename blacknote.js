const whosOnline = (friends) => {
  return friends.reduce((obj, user) => {
    if (user.lastActivity > 10 && user.status === 'offline') {
      obj = obj.offline ? { ...obj, offline: [...obj.offline, user.username] } : { ...obj, offline: [user.username] };
    } else if (user.lastActivity > 10 && user.status === 'online') {
      obj = obj.away ? { ...obj, away: [...obj.away, user.username] } : { ...obj, away: [user.username] };
    } else {
      obj = obj.online ? { ...obj, online: [...obj.online, user.username] } : { ...obj, online: [user.username] };
    }

    return obj;
  }, {});
};
const friends = [
  {
    username: 'David',
    status: 'online',
    lastActivity: 10,
  },
  {
    username: 'Lucy',
    status: 'online',
    lastActivity: 22,
  },
  {
    username: 'Bob',
    status: 'online',
    lastActivity: 104,
  },
];
console.log(whosOnline(friends));
