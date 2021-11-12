# Javascript

## Advanced Concepts

### Conditional (Ternary) Operator

JavaScript also contains a conditional operator that assigns a value to a variable based on some condition.

`variablename = (condition) ? value1:value2`

`let voteable = (age < 18) ? "Too young":"Old enough";`

### The For In Loop

The JavaScript for in statement loops through the properties of an Object:

```
const person = {fname:"John", lname:"Doe", age:25};

let text = "";
for (let x in person) {
  text += person[x];
}
```

### For array loop

```
for (variable of iterable) {
  // code block to be executed
}
```

#### Links

[[front-end]]
