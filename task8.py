# Define the Person class to store basic information about a person.
class Person:
    def __init__(self, student_id, name):
        # Initialize the student ID and name as attributes.
        self._student_id = student_id  # _ indicates a "protected" attribute
        self.name = name

    def display_details(self):
        # Return a formatted string containing the student's ID and name.
        return f"Student ID: {self._student_id}, Name: {self.name}"

# Define the Student class, inheriting from Person, to add grading functionality.
class Student(Person):
    def __init__(self, student_id, name):
        super().__init__(student_id, name)
        # Initialize the _grades attribute as an empty dictionary.
        self._grades = {}  # _ indicates a "protected" attribute

    def add_grade(self, subject, grade):
        # Add a grade for a specific subject to the _grades dictionary.
        self._grades[subject] = grade

    @property
    def average_grade(self):
        # Calculate and return the average grade of the student.
        if not self._grades:
            return 0
        return sum(self._grades.values()) / len(self._grades)

    def display_details(self):
        # Override the display_details method to include the average grade.
        return super().display_details() + f", Average Grade: {self.average_grade:.2f}"

# Define the StudentManagementSystem class to manage student records.
class StudentManagementSystem:
    def __init__(self):
        # Initialize an empty dictionary to store student objects.
        self.students = {}

    def add_student(self, student_id, name):
        # Add a new student to the system or notify if the student ID already exists.
        if student_id not in self.students:
            self.students[student_id] = Student(student_id, name)
        else:
            print("Student ID already exists.")

    def show_student_details(self, student_id):
        # Display specific student details based on the provided student ID.
        if student_id in self.students:
            return self.students[student_id].display_details()
        else:
            return "Student not found."

    def show_student_average_grade(self, student_id):
        # Calculate and display the average grade for a specific student.
        if student_id in self.students:
            return f"Average Grade for {self.students[student_id].name}: {self.students[student_id].average_grade:.2f}"
        else:
            return "Student not found."

# Example usage:
sms = StudentManagementSystem()

# Add students and grades, then display their details and average grades.
sms.add_student("S001", "Alice")
sms.add_student("S002", "Bob")

sms.students["S001"].add_grade("Math", 90)
sms.students["S001"].add_grade("Science", 85)

sms.students["S002"].add_grade("Math", 95)
sms.students["S002"].add_grade("Science", 88)

print(sms.show_student_details("S001"))
print(sms.show_student_details("S002"))

print(sms.show_student_average_grade("S001"))
print(sms.show_student_average_grade("S002"))
