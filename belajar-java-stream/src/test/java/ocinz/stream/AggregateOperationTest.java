package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.Comparator;
import java.util.List;

public class AggregateOperationTest {
    @Test
    void testMax(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .max(Comparator.naturalOrder())
                .ifPresent(System.out::println);
    }
    @Test
    void testMin(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .min(Comparator.naturalOrder())
                .ifPresent(System.out::println);
    }
    @Test
    void testCount(){
        long count = List.of("Ahmad", "Hafid", "Ocinz").stream()
                .count();
        System.out.println(count);
    }
    @Test
    void testSum(){
        Integer reduce = List.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10).stream()
                .reduce(0, (value, item) -> value + item);
        System.out.println(reduce);
    }
    @Test
    void testFactorial(){
        Integer factorial = List.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10).stream()
                .reduce(1, (value, item) -> value * item);
        System.out.println(factorial);
    }
}
