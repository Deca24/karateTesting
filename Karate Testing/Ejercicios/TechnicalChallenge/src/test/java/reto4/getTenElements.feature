Feature: Get 10 elements

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario:  Get ten elements and validate with an array

    Given path 'posts'
    When method GET
    Then status 200

    * assert response.length >= 10