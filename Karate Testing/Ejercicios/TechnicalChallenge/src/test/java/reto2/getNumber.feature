Feature: Get number id

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

    Scenario: Get a number id specific
      * def id_number = 1
      Given path 'posts',id_number
      When method get
      Then status 200

      And match response.id == id_number