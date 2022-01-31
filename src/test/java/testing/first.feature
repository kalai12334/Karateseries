Feature: fetching User Details
 Scenario: print string value

  * print 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjj'
  * print 'jjhhh'

  Scenario: testing the get call for User Details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

   Scenario: defining JSON object and print it
    Given def jsonObject =
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
    * print jsonObject[1].name, jsonObject[0].phone

  Scenario: Put Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "morpheus", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response
    And match response.name == "morpheus"

  Scenario: Put Demo 1
    * def a= 1
    * def b= 2
    * print 'mul'-> + (a*b)

