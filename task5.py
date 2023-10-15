class PersonMixin:
    def print_attributes(self):
        # Get all instance attributes and their values as a dictionary
        attribute_dict = self.__dict__
        
        # Print the attributes with their names and values
        for key, value in attribute_dict.items():
            print(f"{key}: {value}")

class Person:
    def __init__(self, name, surname, age):
        self.name = name
        self.surname = surname
        self.age = age

class Student(Person, PersonMixin):
    def __init__(self, name, surname, age, university):
        self.university = university
        super().__init__(name, surname, age)

# Create a Student object
student = Student("Giorgi", "Izoria", 24, "A University")

# Use the mixin method 
student.print_attributes()
