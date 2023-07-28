# Our first scripts of the day

![welcome][welcome]

## welcome.sh
- shebang `!#/bin/bash` <br>
it is used to specify which shell interpreter to be used.
- comment `# this is a comment`<br>
anything after a '#' will not be run as a command.
- echo<br>
we call this command to display output on the terminal, just like the one we used before.
- date<br>
this command is used to retrieve current system's date and time

## Execute our script!
- make it `executable` using this command: `$ chmod +x welcome.sh`
- run it using this command: `$ ./welcome.sh`

## welcome-edit.sh

- copy the welcome.sh into a new file called `welcome-edit.sh`
- modify the new file so the output is similar to this (5 minutes)<br>

![welcome-edit][welcome-edit]

## Variables and data types
- In shell scripting, variables are used to store data or values that can be accessed and manipulated throughout the script. Variables can hold various types of data, and the data type is determined implicitly based on the context in which the variable is used. Unlike some programming languages, shell scripting is not strongly typed, meaning you don't need to explicitly define the data type when declaring a variable.
- Examples:
  - String: A sequence of characters enclosed in single or double quotes. Strings are the most commonly used data type in shell scripting.
  - Integer: Whole numbers without any decimal points.
  - Floating-Point: Numbers with decimal points.
  - Array: A collection of values accessible by their indices. Shell scripting supports one-dimensional arrays.
  - Boolean: Shell scripting doesn't have a native Boolean data type. Instead, booleans are represented using integer values, where 0 represents false, and any non-zero value represents true.
  - Null: Represents the absence of a value or an undefined variable.
  <br>
- It's important to note that shell scripting is loosely typed, meaning variables can change their data type during execution. For example, a variable that initially stores an integer value can later hold a string value without any explicit type conversion.

- In shell scripts, you can access the value of a variable using the dollar sign ($) followed by the variable name. For example, `$name` will give you the value of the name variable, and `${fruits[0]}` will give you the first element of the `fruits` array.

- Check this out:<br>
![variables][variables]

- Try to output each one with `$ echo $[variable name]`!!

## Basic control structures
### if-else
- In this script, we prompt the user to enter a number using the read command. Then, we use an if-else construct to check if the number is greater than 10. If the condition is true, we display a message indicating that the number is greater than 10. Otherwise, we display a message indicating that the number is less than or equal to 10.
<br>
![if-else]

### if-else-args
- copy the if-else.sh into a new file calles `if-else-args.sh`
- comment the 5th line
- change the 7th line into this: `if [ $1 -gt 10 ]; then`
<br>
<br>
![if-else-args][if-else-args]

### if-else-args-loop
- copy the if-else-args.sh into a new file called `if-else-args-loop.sh`
- modify the new file so the output is similar to this (5 minutes)<br>

![if-else-args-loop][if-else-args-loop]

### for




[welcome]: images/2-welcome.png
[welcome-edit]: images/2-welcome-edit.png
[if-else-args-loop]: images/2-if-else-args-loop.png
[variables]: images/2-variables.png
[if-else]: images/2-if-else.png
[if-else-args]: images/2-if-else-args.png

