package reto7;

import com.intuit.karate.junit5.Karate;

public class basicAuthRunner {
    @Karate.Test
    Karate basicAuthRunner(){
        return Karate.run("basicAuthApi").relativeTo(getClass());
    }
}
