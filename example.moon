// line comment
/*
	block comment
	hey, I can write here
*/

include "another_file.moon" // include file
include "specific_func_file.moon" specific_func,factorial // import just specific_func,factorial functions
import example.other aspecific_func // import aspecific_func from example.other module
import std.io println,printf

#def PREVARIABLE 3.14

const varinreadonlymemory = 55

struct foobar<foo, bar>

#ifdef PREVARIABLE:
	print("Yey")
	prinln ", defined!"

#if defined PREVARIABLE || defined(PREVARIABLE) {
	print("Yey")
	prinln ", defined!"
}
#else: error("Not defined!")

#if (PREVARIABLE == 3.14) : println "Equal!"

global program_ended
println program_ended

local example_ended = false

println "Hello world in Moon!"
println "Hello
 separated"
println `Hello raw literal 
also separated string!`

example_function(): print "This is an example"

example_function

def complex_function(...) {
	print '-' // puts '-' char
	println $1 $2 $3 // print argument 1, 2 and 3
	println ... // print all arguments
	println `${PREVARIABLE}: ${example_ended}` // Output should be: 3.14: false
}

def foovar;

example_ended = true // redefine a variable

label endlbl // record the instruction line
println("End!");
goto endlbl // goto instruction line