package reto8;

import com.intuit.karate.junit5.Karate;

public class cicloRunner {
    @Karate.Test
    Karate cicloRespuesta(){
        return Karate.run("cicloRespuestaExitosa").relativeTo(getClass());
    }
}
