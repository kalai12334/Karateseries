Feature: Create user using post api

  Background:
    * url 'https://gorest.co.in'
    * def requestPayload =
    """
        [
          {
            "name": "jack",
            "phone" : 15435667788
          },
          {
            "name": "jennie",
            "phone" : 13443567234
          }
        ]
      """
      Scenario: Create a user with  the given data
      Given path '/public/v1/users'
      And request requestPayload
      And header Authorization = 'Bearer' + tokenID
      When method post
       Then status 401
        * print response
        * print $.message
        And match $.message == 'Authentication failed'