Feature: Obtener y detallar usuario

  Background:
    * url 'https://jsonplaceholder.typicode.com'

    Scenario: Obtener lista de usuarios y seleccionar el primer usuario para detallar

      Given path 'posts'
      When method GET
      Then status 200

      * def listUser = response
      * def detailedUser = listUser[0]

      * print 'Detalle del usuario 1: ', detailedUser