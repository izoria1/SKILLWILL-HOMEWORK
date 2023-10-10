class Student:
    #Class attribute
    university = "University Name"

    #Initializing constructor
    def __init__(self, name, grade, age):
        self.name = name
        self.grade = grade
        self.age = age

    #Magic methor __str__
    def __str__(self):
        return f"Name: {self.name}, Grade: {self.grade}, Age: {self.age}"

    #Property if a student is passing
    @property
    def is_passing(self):
        if self.grade > 60:
            return True
        return False

    #Grade increase method
    def increase_grade(self, increase_amount):
        self.grade = self.grade + increase_amount
