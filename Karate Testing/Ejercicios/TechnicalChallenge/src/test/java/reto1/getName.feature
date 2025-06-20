Feature: Get name pokemon

  Background:
    * url 'https://pokeapi.co/api/v2'

    Scenario: Get name of a pokemon and compare whit the result

      * def name_of_pokemon = 'pikachu'
      Given path 'pokemon', name_of_pokemon

      When method get
      And status 200

      And match response.name == name_of_pokemon