package examples.petsTest;

import com.intuit.karate.junit5.Karate;

public class PetsRunner {

    @Karate.Test
    Karate searchPets() {
        return Karate.run("searchPets").relativeTo(getClass());
    }

}