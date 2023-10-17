# Define the Heart class
class Heart:
    def __init__(self, usage):
        self.usage = usage  # Initialize the heart's usage

    @property
    def state(self):
        # Check the heart's usage and return the state
        if self.usage > 70:
            return "high blood pressure"
        else:
            return "feeling good"

# Define the Brain class
class Brain:
    def __init__(self, usage):
        self.usage = usage  # Initialize the brain's usage

    @property
    def state(self):
        # Check the brain's usage and return the state
        if self.usage > 90:
            return "tired"
        else:
            return "rested"

# Define the Leg class
class Leg:
    def __init__(self, moving_speed):
        self.moving_speed = moving_speed

    @property
    def state(self):
        if self.moving_speed > 10:
            return "running"
        else:
            return "walking or standing"

# Create an instance of the Leg class
johns_leg = Leg(8)  # John's leg is walking or standing

# Create a Person and pass the Leg class using composition
class Person:
    def __init__(self, name, age, heart_usage, brain_usage, leg):
        self.name = name
        self.age = age
        self.heart = Heart(heart_usage)
        self.brain = Brain(brain_usage)
        self.leg = leg  # Composition: Person includes a Leg

    def describe(self):
        print(f"{self.name}, aged {self.age}, has a {self.heart.state}, a {self.brain.state} brain, and is {self.leg.state}.")

# Create a Person and pass the Leg instance
john = Person(name="John", age=30, heart_usage=75, brain_usage=85, leg=johns_leg)

# Describe the person
john.describe()
