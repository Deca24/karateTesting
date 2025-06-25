Feature: Simular flujo de autenticación básica con validaciones

  Background:
    * url 'https://httpbin.org'

    * def correctUser = 'user'
    * def correctPass = 'passwd'

    * def incorrectUser = 'wrongUser'
    * def incorrectPass = 'wrongPass'

    * def encodeBase64 =
      """
      function(input) {
          var bytes = java.util.Base64.getEncoder().encode(input.getBytes());
          return new java.lang.String(bytes);
      }
      """

  Scenario: Validar status 200 con credenciales correctas

    * def encodedCorrectCredentials = encodeBase64(correctUser + ':' + correctPass)

    Given path 'basic-auth', correctUser, correctPass
    And header Authorization = 'Basic ' + encodedCorrectCredentials
    When method GET
    Then status 200

    * match response.authenticated == true
    * match response.user == correctUser

  Scenario: Validar status 401 con credenciales incorrectas
    * def encodedIncorrectCredentials = encodeBase64(incorrectUser + ':' + incorrectPass)

    Given path 'basic-auth', correctUser, correctPass
    And header Authorization = 'Basic ' + encodedIncorrectCredentials
    When method GET
    Then status 401

    * assert karate.pretty(response) == '' || karate.pretty(response) == '{}'