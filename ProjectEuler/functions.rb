
# A function is a relation between some (zero or more) input and an output
#
#   input --FUNCTION--> output
#
# For example, the mathematic function 
#  y=x^2 
# can be visalized as follows:
#
#
# X:                          Y: 
# 1                           1  
# 2                           4  
# 3        --square(x)-->     9  
# 4                          16  
# ..                         ..

# In ruby we define the square function as follows:
def square(x)
  return x*x
end

# and we 'call' it in this way:
y = square(2)
# => 4
y = square(3)
# => 9


# Note: When we talk about 'input' we mean 'zero or more input values'
#       But be careful: a functiona always has one only output, or 'return value'
#
# 1, 2    --sum(x,y)--> 3
# 1, 3    --sum(x,y)--> 4
# 5, 6    --sum(x,y)--> 11
#
# A function can not return more than one output value, but beware: a function returning
# a list of numbers as its output is still a legal function, as it is only returning one value
# (of type list or array)

def list_of_seasons() # no inputs
  return ['summer', 'spring', 'winter', 'autumn']
end

list_of_seasons()
# => ['summer', 'spring', 'winter', 'autumn']


# Also, a perfectly valid function is a function that doesn not return nothing. Or better,
# it returns a null value. Still, null is considered to be one output value. Nonteheless, most
# programming languages impleicitly omit the return value not requiring to specify any return statement.

def get_nothing()
  return nil # this line is not mandatory
end

x = get_nothing()
x
# => nil
# x * 3
# NoMethodError: undefined method `*' for nil:NilClass

# The previous error states that, being the value of x 'nil', there's no '*' (multiply) operator 
# applicable to it.
# 'nil' is just a null/empty/void value. It has no value and doesn't support any operator.

# Why do we need functions that don't return 'anything'?
# Well, this is a wrong question. The fact is that sometimes we're just not interested
# on the value returned by a function. For example:

def say_hello
  puts 'Hello, world!'
end

# is a function that, when called, prints on the screen 'Hello, world!'. We don't need
# for it to return any value, but just to perform the action of writing something on the screen.

# Functions can be concatenated, meaning that a function can call another function, in a chain.

def square(x)
  return x*x
end

def double(x)
  return 2*x
end

def double_of_square(x)
  return double(square(x))
end

double_of_square(5)
# => 50

# Functions can also call themselves. Functions that call themselved are said 'Recursive functions'
# The developer will need to take care of not creating infinite loops of executions when using
# Recursive functions.

# def execute_for_ever()
#   execute_for_ever()
# end

# Therefore a recursive function needs a 'termination condition': a statement that makes sure
# the function eventually returns a value so that no more calls will be triggered on the same function.

def countdown(n)
  return if n == 0 # termination condition
  puts n
  countdown(n-1)   # getting closer to termination condition 
end

countdown(3)
# 3
# 2
# 1

# Of course the previous function will still perform infinitely if we call it with a negative value.
# It's up to developer to prevent such case, either by enforcing the termination condition,
# or blocking some inputs (for example generating an error when the function gets called with 
# a negative value)