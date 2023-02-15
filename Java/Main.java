public class Main {
    public static void main(String[] args) {
        int numer = 1;
        double d = 4.5;
        float f = 4.5f;
        char c = 'g';
        int a = 4;
        int b = 5;
        boolean result;
        result = a < b; // true
        result = a > b; // false
        result = a <= 4; // a smaller or equal to 4 - true
        //result = b >= 6; // b bigger or equal to 6 - false
        //result = a == b; // a equal to b - false
        //result = a != b; // a is not equal to b - true
        //result = a > b || a < b; // Logical or - true
        //result = 3 < a && a < 6; // Logical and - true
        //result = !result; // Logical not - false
        System.out.println(result);
        // Create a string with a constructor
        String s1 = new String("Who let the dogs out?");        // String object stored in heap memory
        // Just using "" creates a string, so no need to write it the previous way.
        String s2 = "Who who who who!";                         // S`

        System.out.println("This will be printed");
    } 
}

