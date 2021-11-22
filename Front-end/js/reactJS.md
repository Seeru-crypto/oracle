# React js

## Desc

React is a javascrpt library, used for front-end development

## pre-requiste

-   Node.js

## useful links:

-   [testing examples](https://reactjs.org/docs/testing-recipes.html)

## useful commands

-   To run a dev server
    -   npm start
-   To install dependencies
    -   npm i
-   To create a react project from scratch
    -   npx create-react-app <appName>
-   To install a depencency
    -   npm install <Dependecy name>

## Suggestions

-   It is good practice to use some sort of linter software to ensure clean code
-   Avoid createing large components, since it will decrease their re-usability

## useful dependencies

-   [marked](https://www.npmjs.com/package/marked)
-   axios
-   react-bootstrap
-   prime-react
-   json-server
-   <ins>Semantics</ins>

## Advanced concepts

[redux essentials](https://redux.js.org/tutorials/essentials/part-1-overview-concepts)

[promises & chaining](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises)

[Use React and Spring Boot to Build a Simple CRUD App](https://developer.okta.com/blog/2018/07/19/simple-crud-react-and-spring-boot)


### Hooks & custom hooks
[useful hooks in react](https://reactjs.org/docs/hooks-reference.html#usememo)


## Useful functions

### console logging
#### To console log multiple objects
```javascript
const foo = {name: "tere", age: 30}
const bar = {name: "bar", age: 12}
console.log({ foo, bar })
```
#### To track time of operations in browser
```javascript
console.time('looper')
var code = ""
console.timeEnd('looper')
```
### Template literals
You can add variables inside a string. Makes reading code easier.
```javascript
const bar = {name: "bar", age: 12}
const newLine = `person name is ${name} and he is ${age} years old`
```

### spread syntax
You can easily combine different arrays and objects into a single entity
```javascript
const pikachu = {name: "pikachu"};
const stats = {hp:40, attack: 60};
```
to create a new object to merge them

`const newObj = {...pikachu, ...stats};`

the right side objects have priority
OR

You can copy the original object and change/ add 1 extra parameter.

`const newObj = {...pikachu, hp:50};`

[spread syntax example](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax)


### Reduce
Sums up all the values in the given array
```javascript
const oders = [400, 500, 200];
const total = orders.reduce((accumulatedValue, currentValue) => accumulatedValue + currentValue )
```
### Map
To change all values by 10 precent  in the array&

`const withTax = orders.map(order => order * 1.1)`

### filter
to get values that are over 300

`const filteredList = orders.filter(order => order > 300);`


[Using filtering and mapping example](https://upmostly.com/tutorials/react-filter-filtering-arrays-in-react-with-examples)


##### example projects:



[[front-end]]

[[lintingTools]]
