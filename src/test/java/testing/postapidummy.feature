Feature:
  Scenario:
    Given url 'https://reqres.in/api/users'
    * request requestPayload = read('classpath:src/test/request.json')
    When method post
    Then status 201
    * print response
    And match $.job == 'leader'
# fetch data from post call
    * def job = $.job
    * print job
    # 2nd put call -to update user
  * def requestPutPayload =
    """
  {
   "name": "kalai",
    "job": "driver"
  }
"""
    Given url 'https://reqres.in/api/users'
    And request requestPutPayload
    When method put
    Then status 200

    Given url 'https://reqres.in/api/users'
    When method delete
    Then status 204
    * print response

