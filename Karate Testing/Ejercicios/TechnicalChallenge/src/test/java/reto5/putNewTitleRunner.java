package reto5;

import com.intuit.karate.junit5.Karate;

public class putNewTitleRunner {
    @Karate.Test
    Karate putNewTitle(){
        return Karate.run("putNewTitle").relativeTo(getClass());
    }
}
