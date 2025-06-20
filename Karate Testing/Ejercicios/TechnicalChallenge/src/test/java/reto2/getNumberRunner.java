package reto2;

import com.intuit.karate.junit5.Karate;

public class getNumberRunner {
    @Karate.Test
    Karate getNumberId(){
        return Karate.run("getNumber").relativeTo(getClass());
    }
}
