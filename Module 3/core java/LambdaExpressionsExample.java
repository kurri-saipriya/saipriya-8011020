import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class LambdaExpressionsExample {

public static void main(String[] args) {

    List<String> names = new ArrayList<>();

    names.add("Sai Priya");
    names.add("Ravi");
    names.add("Anjali");
    names.add("Kiran");

    Collections.sort(names, (a, b) -> a.compareTo(b));

    System.out.println("Sorted List:");

    for (String name : names) {
        System.out.println(name);
    }
}


}

