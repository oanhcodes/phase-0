##What does puts do?
Puts will print(write) the output onto the console with a new line.

##What is an integer? What is a float?
An integer is a number without any decimals. A float is a number with decimal points.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
When you use integers to do arithmetic, you will get integer answers. This means when you divide integers, your computer will round the answer down. If you want your computer to act like a calculator and return answers with decimals, you should use floats. Interger division can be used when you want answers that aren't divisible. Here is a sample question: How many whole pizzas can you buy for $52 if each whole pizza costs $10? You would only be able to buy 5 whole pizzas even though you will have some change.

##Mini Challenges

```ruby
irb(main):001:0> puts 24 * 365
8760
=> nil
irb(main):002:0> puts (24 * 60) * (365 * 10)
5256000
=> nil
```