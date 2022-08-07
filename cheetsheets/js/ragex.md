- /[A-Za-z0-9_]/ === /\w/
- /[^a-za-z0-9_] / === /\W/

### test / match

'string'.match(/string/);
/string/.test('string');

### i (ignore case)

> /free/i.test('FreE') => true
> /free/i.test('FreE') => true

### g (search pattern more than once)

> 'good, good, good'.match(/good/g) => ['good', 'good', 'good']

### . (any single pattern | wildcard character)

> /do./.test('dog') => true

### [] (match one of many chars)

> 'dog02'.match(/[a-z0-9]/g ) => dog02

### + (look for characters that occur one or more times )

> 'Mississippi'.match(/s+/gi) => ['ss', 'sss']

<hr />

### [^] (negation)

> 'blind .'.match(/[^aeiou0-9]/gi) => ['b', 'l', 'n', 'd', ' ', '.']

### ^ (find chars at the beginning)

> 'blind'.match(/^[baeiou0-9]/gi) => ['b']

### $ (find chars at the end)

> 'blind'.match(/[baeioud0-9]$/gi) => ['d']

### \* (look for characters that occur zero or more times )

> "gooooooooal!".match(/go star/) => goooooooo

<hr />

### /\W/ (font alpabetical chars same as /[a-za-z0-9_] / )

> 'hey-=!sad'.match(/\w/g) => ['h', 'e', 'y', 's', 'a', 'd']

### /\W/ (font non alpabetical chars same as /[^a-za-z0-9_] / )

> 'hey-=!sad'.match(/\W/g) => ['-', '=', '!']
