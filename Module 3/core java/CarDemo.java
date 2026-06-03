class Car {

String make;
String model;
int year;

// Method to display car details
void displayDetails() {
    System.out.println("Make: " + make);
    System.out.println("Model: " + model);
    System.out.println("Year: " + year);
    System.out.println();
}

}

public class CarDemo {

public static void main(String[] args) {

    // First Car Object
    Car car1 = new Car();
    car1.make = "Toyota";
    car1.model = "Corolla";
    car1.year = 2022;

    // Second Car Object
    Car car2 = new Car();
    car2.make = "Honda";
    car2.model = "City";
    car2.year = 2023;

    // Display Details
    car1.displayDetails();
    car2.displayDetails();
}

}
