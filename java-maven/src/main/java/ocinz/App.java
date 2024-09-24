package ocinz;

import com.google.gson.Gson;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        Gson gson = new Gson();
        Person ocinz = new Person("Ocinz");

        System.out.println("Hello World!");
        System.out.println(gson.toJson(ocinz));
    }
}
