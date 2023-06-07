Feature: 
  
  Scenario:
    Given url 'https://jsonplaceholder.typicode.com'
    And path "/posts/70"
    And request 
    """
    {
    "id": 70,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """
    When method PUT
    Then status 200
    And print response
    And assert responseHeaders['Content-Type'][0] == 'application/json; charset=utf-8'
    And assert responseHeaders['Connection'][0] == 'keep-alive'
    And assert response.title == 'Ahmet'
    And assert response.body == 'Merhaba'
    And assert response.id == '70'
    And assert response.userId == '10'

