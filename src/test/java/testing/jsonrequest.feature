Feature: Create user using post api

  Background:
    * url 'https://gorest.co.in'
    * def requestPayload = read('classpath:src/test/resource-payload.json')

      Scenario: Create a user with  the given data
      Given path '/public/v1/users'
      And request requestPayload
      And header Authorization = 'Bearer' + tokenID
      When method post
      Then status 201
      * print response
