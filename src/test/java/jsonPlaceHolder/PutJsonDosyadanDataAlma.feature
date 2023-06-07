Feature:
  Background:

    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read ("request.json")
    * def expectedResponseBody = read ("expectedResponseBody.json")

  @api4
  Scenario:
    Given url  baseUrl
    And path  pathParams
    When request  requestBody
    And method Put
    Then status 200
    And assert response.id == expectedResponseBody.id
    And assert response.title == expectedResponseBody.title
    And assert response.body == expectedResponseBody.body
    And assert response.userId == expectedResponseBody.userId