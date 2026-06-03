public class TypeCastingExample {

public static void main(String[] args) {

    // Double to Int (Narrowing)
    double d = 45.78;
    int i = (int) d;

    // Int to Double (Widening)
    int num = 25;
    double d2 = (double) num;

    System.out.println("Original Double Value: " + d);
    System.out.println("Double to Int: " + i);

    System.out.println("Original Int Value: " + num);
    System.out.println("Int to Double: " + d2);
}

}
