from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def start_engine(self):
        pass

    @abstractmethod
    def stop_engine(self):
        pass

class Car(Vehicle):
    def __init__(self, max_speed):
        self.max_speed = max_speed
        self.current_speed = 0
        self.engine_started = False

    def start_engine(self):
        if not self.engine_started:
            self.engine_started = True
            return "car started"
        else:
            return "car is already running"

    def stop_engine(self):
        if self.engine_started:
            self.engine_started = False
            return "car stopped"
        else:
            return "car is already stopped"

class SportCar(Car):
    def start_engine(self):
        car_start_message = super().start_engine()
        return f"{car_start_message} with a max speed of {self.max_speed}."

    def stop_engine(self):
        car_stop_message = super().stop_engine()
        self.current_speed = 0
        return f"{car_stop_message} Current speed is now {self.current_speed}."

# Example usage:
my_sport_car = SportCar(max_speed=250)
print(my_sport_car.start_engine())  # Output: "car started with a max speed of 250."
print(my_sport_car.stop_engine())   # Output: "car stopped. Current speed is now 0."
