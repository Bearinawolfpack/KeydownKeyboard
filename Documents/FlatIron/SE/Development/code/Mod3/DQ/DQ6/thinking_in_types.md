What are the basic data types in JavaScript? Fill in the table of types below with descriptions of the types and the operators that work on them.
(primitive data types)
undefined
String
Number
Boolean
Symbols
Null


Object is the basic data type that we use to build other, more specialized 'types' of data. Name some of the ways that Object is used in JavaScript (e.g. what other types are really Object underneath).

Everything in JS is an object except the 6 primitive data types listed above.


function addFive(number) { return number + 5}
type of input is number
type of output is number

function sum(A, B) { return A + B }
type of input could either but string or integer
output will be string concatination or sum of numbers

function concat(A, B) { return "" + A + B }
type of input can be anything
type of output will be a string, due to type conversion

document.querySelector
type of inputs could be any element on the DOM
type of output will be the element

window.fetch
type of input url
type of output promise

function getName(person) {
  return person.name;
}
type of input object
type of output string

function getAge(person) {
  return person.age;
}
type of input object
type of output integer

function makePerson(name, age) {
  return {
    name: name,
    age: age
  };
}