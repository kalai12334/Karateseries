Feature:
  Scenario:

    Given url 'http://dummy.restapiexample.com/api/v1/employee'
    And path '/09'
    And  method GET
    And status 200
    * print response
    And match $.status == 'success'

