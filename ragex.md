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

> 'dog'.match(/d[oidg]g/) => dog

```

```
