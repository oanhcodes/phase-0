##Summarize
***

##What does puts do?
Puts will print(write) the output onto the console with a new line.

##What is an integer? What is a float?
An integer is a number without any decimals. A float is a number with decimal points.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
When you use integers for division, the answer will be rounded down and returned as an integer. For example 10 / 4 would simply return 2. If you want your computer to act like a calculator and return answers with decimals, you would use float division. If we use the original example and turn the integers into floats, 10.0 / 4.0 would return 2.5. 

##Mini Challenges

```ruby
irb(main):001:0> puts 24 * 365
8760
=> nil
irb(main):002:0> puts (24 * 60) * (365 * 10)
5256000
=> nil
```
##Reflection
***

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Addition: Use +
Subtraction: Use -
Multiplication: Use *
Division: Use / (Make sure you using floating-point numbers)

##What is the difference between integers and floats?
An integer is a number without decimals. Floats are numbers with decimal points.

##What is the difference between integer and float division?
Integer divison always returns an integer by rounding down to the nearest whole number. Float division returns a result like a calculator would with decimal points.

##What are strings? Why and when would you use them?
Strings are groups of letters in a program that are strung together. They can include punctuation, digits, symbols, and spaces as long as everything is within single quotes.

##What are local variables? Why and when would you use them?
A variable is an assigned name for stored numbers and/or letters. You would use local variables to avoid repition and having to type the same thing over and over.

##How was this challenge? Did you get a good review of some of the basics?
I enjoyed this challenge a lot. Chris Pine's book is very approachable. The challenges were simple but gave me a nice introduction to reading error messages.

#Links to challenge solutions

[Defining Variable](https://github.com/oanhcodes/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String](https://github.com/oanhcodes/phase-0/blob/master/week-4/simple-string.rb)

[Basic Math](https://github.com/oanhcodes/phase-0/blob/master/week-4/basic-math.rb)