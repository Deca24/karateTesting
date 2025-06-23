package reto6;

import com.intuit.karate.junit5.Karate;

public class DetailIdRunner {
    @Karate.Test
    Karate DetailIdRunner(){
        return Karate.run("getDetailId").relativeTo(getClass());
    }
}
