Feature: post-api
  Scenario:

    Given url 'https://reqres.in/api/users'
    And path '/2'
    And  method GET
    And status 200
    * print response
    And match $.support.text  == 'To keep ReqRes free, contributions towards server costs are appreciated!'

