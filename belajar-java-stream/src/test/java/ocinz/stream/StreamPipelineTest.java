package ocinz.stream;

import org.junit.jupiter.api.Test;

import java.util.List;

public class StreamPipelineTest {
    @Test
    void testCreateStreamPipeline(){
        List.of("EKo", "kurniawan", "Khannedy").stream()
                .map(name->name.toUpperCase())
                .map(name-> "Mr. " + name)
                .forEach(System.out::println);
    }
}
