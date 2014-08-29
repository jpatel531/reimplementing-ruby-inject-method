#Re-implementing the inject method

Re-implementing the Ruby inject method as part of the Week 4 Test at Makers Academy.

The inject method combines all the elements of an enumerable by applying an operation, whether a block or a symbol representing a method. You can explicitly pass an initial accumulator value, otherwise it will be first value of the enumerable.

For the purpose of this exercise, I have opened up the Array class.


##Objectives

To learn about Ruby Enumerable methods in greater depth, while learning about the `yield` and `method` methods.


##Technologies

*Ruby
*RSpec

##How to run

```
git clone https://github.com/jpatel531/reimplementing-ruby-inject-method.git
cd reimplementing-ruby-inject-method
irb
```

``` ruby
require './lib/inject'
[1,2,3,4].my_inject {|sum, n| sum + n}
# => 10

[1,2,3,4].my_inject(5) {|sum, n| sum + n}
# => 15

[1,2,3,4].my_inject(:+)
# => 10

[1,2,3,4].my_inject(5, :*)
# => 15
```
##How to run tests

```
cd reimplementing-ruby-inject-method
rspec
```