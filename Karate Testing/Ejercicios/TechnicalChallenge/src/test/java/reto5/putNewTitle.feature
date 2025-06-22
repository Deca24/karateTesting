Feature: Put a new title

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * def idToUpdate = 1

    Scenario: Validate changes in the 'title'

      Given path 'posts', idToUpdate
      When method GET
      Then status 200

      * def originalJson = response

      Given path 'posts', idToUpdate
      * def newTitle =
      """
      {
        "userId": 1,
        "id": 1,
        "title": "nuevo titulo",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
      }
      """
      And request newTitle
      When method PUT
      Then status 200

      * match response.title == 'nuevo titulo'
      * match response != originalJson
