package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.stream.Stream;

public class TransformationOperationTest {

    @Test
    void testMap(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .map(String::toUpperCase)
                .map(String::length)
                .forEach(System.out::println);
    }
    @Test
    void testFlatMap(){
//        flatmap has to return a stream and the stream will be added to main stream
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .map(String::toUpperCase)
                .flatMap(value->Stream.of(value, value))
                .forEach(System.out::println);
    }
}
