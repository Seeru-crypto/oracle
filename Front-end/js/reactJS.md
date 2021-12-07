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
-   Avoid creating large components, since it will decrease their re-usability

## useful dependencies

-   [marked](https://www.npmjs.com/package/marked)
-   axios
-   CSS Framework:  react-bootstrap / Primereact / <ins>Semantics</ins> 
-   json-server

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
const newLine = `person name is ${bar.name} and he is ${bar.age} years old`
```

### spread syntax
You can easily combine different arrays and objects into a single entity.
The priority will be on the rightmost objects.
```javascript
const pikachu = {name: "pikachu"};
const stats = {hp:40, attack: 60};
```
To create a new merged object

`const newObj = {...pikachu, ...stats};`

the right side objects have priority
OR

You can change the original objects existing value.

`const newObj = {...pikachu, hp:50};`

OR 

You can add a new value by following the same syntax.

`const newObj = {...pikachu, color:'yellow'};`

[spread syntax example](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax)


### Reduce
Can be used for advanced mathematical equations. It saves both the current value and saved total value. 

For example: 
Sums up all the values in the given array
```javascript
const oders = [400, 500, 200];
const total = orders.reduce((accumulatedValue, currentValue) => accumulatedValue + currentValue )
```
### Map
Creates a new Array by changing all given values.

To change all values by 10 precent  in the array&

`const withTax = orders.map(order => order * 1.1)`

### filter
to get values that are over 300

`const filteredList = orders.filter(order => order > 300);`


[Using filtering and mapping example](https://upmostly.com/tutorials/react-filter-filtering-arrays-in-react-with-examples)


### Promise
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise



##### example projects:



[[front-end]]

[[lintingTools]]
