# Reference of Moon Programming Language
This document is a reference to all things about the language.

## Why Moon?
Moon is a flexible, easy to learn programming language.

## Syntax
### Paradigm
Multi paradigm: Object-oriented, Imperative, Functional, Procedural

### Keywords
  - `def`: Declare/define variables/functions in the current scope
  - `global`: Declare/define variables and functions in the global scope
  - `local`: Declare/define variables that can only be used on the current scope

### Variables
You can declare a variable with `var` keyword or just declare it with a value (it will declare in current scope)
```
var foo
var bar = 0
foobar = 2
```
You can use `global` to refer a declaration to the global scope.

```
global foo = 12
```
Also use `local` for variables that you will only use in your current scope
```
local foo = 5
{
  foo = 2
}
print foo // 5
```

### Scope
You can create a scope using `{` and `}`
```
local foo = 5
{
  foo = 2
}
print foo // 5
```
Also you can use a tab based scope with `:`. But only compatible with functions and `for`, `while` keywords.
```
while true:
  foo()
  bar()
foobar()
```
If it have an instruction in the same line of `:` or theres no additional space/tab added compared to the previous line when using this type of scope you are only able to use one (the next) instruction
```moon
while true: foo()
bar() // Not in loop
while true:
bar()
foobar() // Not in loop
```
