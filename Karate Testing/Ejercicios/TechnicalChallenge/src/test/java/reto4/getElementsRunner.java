package reto4;

import com.intuit.karate.junit5.Karate;

public class getElementsRunner {
    @Karate.Test
    Karate getTenElementsValidation(){
        return Karate.run("getTenElements").relativeTo(getClass());
    }
}
