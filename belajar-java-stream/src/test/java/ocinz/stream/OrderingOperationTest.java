package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;

public class OrderingOperationTest {
    @Test
    void testSorted(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .sorted().forEach(System.out::println);
    }
    @Test
    void testSortedWithComparator(){
        List.of("Hafid", "Ahmad", "Ocinz").stream()
                .sorted(Comparator.reverseOrder()).forEach(System.out::println);
    }
}
