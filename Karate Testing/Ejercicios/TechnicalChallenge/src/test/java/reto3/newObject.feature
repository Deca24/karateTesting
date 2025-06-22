Feature: Send a new object

  Background:
    * url 'https://jsonplaceholder.typicode.com'

    Scenario: Send a new object and compare the result

      Given path 'posts'
      * def json_new_object =
      """
      {
        title: "foo",
        body: "bar",
        userId: 1
      }
      """
      And request json_new_object
      When method post
      Then status 201

      And match response.title == json_new_object.title

