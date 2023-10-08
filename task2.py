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

print("The smallest integer is:", smallest)
