package reto1;

import com.intuit.karate.junit5.Karate;


public class getNameRunner { // Declara una clase pública
    @Karate.Test  // Es una anotación específica de Karate. Indica que el método que sigue se ejecutará como una prueba.

    Karate getNamePikachue() { // Declaración de un metodo que devuelve un objeto de tipo Karate
        return Karate.run("getName").relativeTo(getClass()); // Ejecuta el archivo de prueba e indica que está ubicado en el mismo directorio que la clase
    }
}
