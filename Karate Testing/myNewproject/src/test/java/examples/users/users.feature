Feature: Validar ID

  Background: Api obtener posiciones
    * url 'https://jsonplaceholder.typicode.com'

    Scenario: Obtener posición y validar

      Given path 'posts', 1
      When method get
      Then status 200
      And match response.id == 1