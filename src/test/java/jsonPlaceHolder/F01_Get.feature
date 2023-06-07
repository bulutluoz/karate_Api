Feature:

  @api
  Scenario:

    Given url 'https://jsonplaceholder.typicode.com'
    And path "/posts/44"
    When method GET
    Then status 200
    And match responseStatus == 200
    And assert responseTime < 1000
    And assert responseHeaders['Content-Type'][0] == 'application/json; charset=utf-8'
    And assert response.userId == 5
    And assert response.id == 44
