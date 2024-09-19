package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.stream.Stream;

public class CreateStreamBuilderTest {

    @Test
    void testCreateStreamBuilder(){
        Stream.Builder<String> stringBuilder = Stream.builder();
        stringBuilder.accept("Eko");
        stringBuilder.add("Kurniawan").add("Khannedy");
        Stream<String> stream = stringBuilder.build();
        stream.forEach(System.out::println);
    }
    @Test
    void testCreateStreamBuilderSimplified(){
        Stream.builder().add("Eko").add("Kurniawan").add("Khannedy").build().forEach(System.out::println);
    }
}
