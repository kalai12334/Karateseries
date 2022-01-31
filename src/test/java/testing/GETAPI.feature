Feature: GET API path -Positive and Negative testcase

  Scenario:  GET API- user not Found
    Given url baseUrl+ 'public/v1/users/'  //passing baseUrl from config url
    And path '899'
    When method GET
    Then status 200
    And print response
     * def jsonResponse = response
     * print jsonResponse
     * print jsonResponse.data
     * print jsonResponse.data.email
     * print jsonResponse.data.meta[0]

  Scenario:  GET API- user not Found
    Given url baseUrl+ 'public/v1/users/'
    And path '1'
    When method GET
    Then status 404
    And print response

    Scenario: GET API with Query Param
      * def query = {gender:'female',id:'1875',name:'Dayamayee Trivedi'}
      Given url baseUrl+ 'public/v1/users/'
      And params query
      When method GET
      Then status 200
      And print JsonResponse = response
      And print JsonResponse.data.length
      * def count = JsonResponse.data.length
      * print count

      Scenario: GET API Query example
        * def query = {status:'active',name:'Deeptimay Deshpande'}
        Given url baseUrl +'public/v1/users/'
        And params query
        When method GET
        Then status 200
        And print response
        * def pagescount =  response.meta.pagination.pages
        * print response.data.email
        * def email = response.data.email
        * print email
         * print response.meta.pagination.page





