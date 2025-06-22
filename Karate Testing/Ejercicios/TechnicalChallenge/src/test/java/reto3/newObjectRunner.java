package reto3;

import com.intuit.karate.junit5.Karate;

public class newObjectRunner {
    @Karate.Test
    Karate newObjet(){
        return Karate.run("newObject").relativeTo(getClass());
    }
}
