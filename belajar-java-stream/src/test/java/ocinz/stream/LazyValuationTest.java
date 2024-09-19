package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.List;

public class LazyValuationTest {
    @Test
    void testIntermediateOperation(){
//        intermediate operation, won't do anything
//        List.of("Ahmad", "Hafid", "Ocinz").stream().map(name->{
//            System.out.println("Change " + name + " to " + name.toUpperCase() );
//            return name.toUpperCase();
//        });

//        terminal operation, triggered by forEach
//        any func with return of stream is intermediate operation
//        any func with no return is terminal operation
        List.of("Ahmad", "Hafid", "Ocinz").stream().map(name->{
            System.out.println("Change " + name + " to " + name.toUpperCase() );
            return name.toUpperCase();
        }).forEach(System.out::println);
    }
}
