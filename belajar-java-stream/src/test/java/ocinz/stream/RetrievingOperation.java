package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Optional;

public class RetrievingOperation {
    @Test
    void testLimit(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .limit(2)
                .forEach(System.out::println);
    }
    @Test
    void testSkip(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .skip(1)
                .forEach(System.out::println);
    }
    @Test
    void testTakeWhileTrue(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .takeWhile(val-> val.equals("Ahmad"))
                .forEach(System.out::println);
    }
    @Test
    void testDropWhileTrue(){
        List.of("Ahmad", "Hafid", "Ocinz").stream()
                .dropWhile(val-> val.equals("Ahmad"))
                .forEach(System.out::println);
    }
    @Test
    void testFindAny(){
        Optional<String> any = List.of("Ahmad", "Hafid", "Ocinz").stream()
                .findAny();
        any.ifPresent(System.out::println);
    }
    @Test
    void testFindFirst(){
        Optional<String> any = List.of("Ahmad", "Hafid", "Ocinz").stream()
                .findFirst();
        any.ifPresent(System.out::println);
    }
}
