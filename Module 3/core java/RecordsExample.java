import java.util.List;
import java.util.stream.Collectors;

// Record Definition
record Person(String name, int age) {}

public class RecordsExample {


public static void main(String[] args) {

    // Creating Record Instances
    Person p1 = new Person("Sai Priya", 20);
    Person p2 = new Person("Ravi", 17);
    Person p3 = new Person("Anjali", 22);

    // Printing Records
    System.out.println("Person Records:");
    System.out.println(p1);
    System.out.println(p2);
    System.out.println(p3);

    // List of Records
    List<Person> people = List.of(p1, p2, p3);

    // Filter persons age >= 18
    List<Person> adults = people.stream()
                                .filter(person -> person.age() >= 18)
                                .collect(Collectors.toList());

    System.out.println("\nPeople aged 18 and above:");
    adults.forEach(System.out::println);
}

}
