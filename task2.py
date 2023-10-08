#PART 1:
def smallest_int(my_dict):
    smallest_integer = None

    for value in my_dict.values():
        # Check if the value is an integer
        if isinstance(value, int):
            # If smallest_integer is None or value is smaller, update smallest_integer
            if smallest_integer is None or value < smallest_integer:
                smallest_integer = value
    
    return smallest_integer

# Example dictionary
example_dict = {'a': 5, 'b': 'banana', 'c': 8, 'd': 1}

# Use the function and store the result in a variable
smallest = smallest_int(example_dict)

print("The smallest integer is:", smallest) # Output: The smallest integer is: 1


#PART 2:
def factorial(n):
    if n == 0:
        return  1
    else: 
        return n * factorial(n-1)

print(factorial(0))  # Output: 1
print(factorial(5))  # Output: 120
print(factorial(7))  # Output: 5040
