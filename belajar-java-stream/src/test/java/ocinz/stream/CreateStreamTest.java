package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Stream;

public class CreateStreamTest {
    @Test
    void testCreateEmptyOrSingleStream() {

        Stream<String> emptyStream = Stream.empty();
        emptyStream.forEach(data -> {
            System.out.println(data);
        });

        Stream<String> oneStream = Stream.of("Eko");
        oneStream.forEach(data -> {
            System.out.println(data);
        });

        String data = "Kurniawan";
        Stream<String> emptyOrNotStream = Stream.ofNullable(data);
        emptyOrNotStream.forEach(item -> {
            System.out.println(item);
        });

    }
    @Test
    void testCreateStreamFromArray(){

        Stream<String> arrayStream = Stream.of("Eko", "Kurniawan", "Khannedy");
        arrayStream.forEach(System.out::println);
        Stream<Integer> integerStream = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        integerStream.forEach(System.out::println);
        String[] strings = new String[]{"Eko", "Kurniawan", "Khannedy"};
        Stream<String> stream = Arrays.stream(strings);
        stream.forEach(System.out::println);
    }

    @Test
    void testCreateStreamFromCollection(){

        Collection<String> stringList = List.of("Eko", "Kurniawan", "Khannedy");
        Stream<String> stream = stringList.stream();
        stream.forEach(System.out::println);
//        stream.forEach(System.out::println);

        Stream<String> stream2 = stringList.stream();
        stream2.forEach(System.out::println);

    }
    @Test
    void testCreateInfiniteStream(){
        Stream<String> infiniteStream = Stream.generate(() -> "Programmer Zaman Now");
//        infiniteStream.forEach(System.out::println);

        Stream<Integer> integerStream = Stream.iterate(1, value -> value + 1);
//        integerStream.forEach(System.out::println);
    }
}
