package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.List;

public class FilteringOperationTest {
    @Test
    void testFilter(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .filter(val-> !val.equals("Ahmad"))
                .forEach(System.out::println);
    }
    @Test
    void testDistinct(){
        List.of("Ahmad", "Hafid", "Ocinz", "Ahmad", "Ocinz").stream()
                .distinct()
                .forEach(System.out::println);
    }
}
