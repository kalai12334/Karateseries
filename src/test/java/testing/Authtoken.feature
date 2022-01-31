Feature: Auth token testing
  Scenario:
    * print tokenID
    Given  header Authorization = 'Bearer'+tokenID
    Given url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response