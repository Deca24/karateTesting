Feature: Enviar múltiples IDs en un ciclo y validar éxito antes de continuar

  Background:
    * url 'https://jsonplaceholder.typicode.com'

    * def userIds = [1, 2, 3, 4, 5]

  Scenario: Procesar múltiples usuarios, continuando solo si el estado es 200
    * def successfulResponses = []

    * karate.forEach(userIds, function(id) {
        var response = karate.callSingle({
            method: 'GET',
            url: '/users/' + id
        });

        if (response.status == 200) {
            karate.log('Usuario con ID', id, 'procesado exitosamente.');
            successfulResponses.push(response.response);
        } else {
          karate.log('Error al procesar el usuario con ID', id, '. Estado:', response.status);
          karate.abort(); // Detener el ciclo si el estado no es 200
        }
  });

    * print 'Respuestas exitosas:', successfulResponses

    * match each successfulResponses == '#[0]'