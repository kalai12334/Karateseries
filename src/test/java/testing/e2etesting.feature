Feature:
  Scenario:  create user
    Given url 'https://reqres.in/api/users'
    * def requestPayload =
  """ {
     "name": "morpheus",
     "job": "leader",
   }"""
    And request requestPayload
    When method POST
    Then status 201
    * print response

  Scenario:  update user
    Given url 'https://reqres.in/api/users'
    * def requestputPayload =
  """ {
     "name": "raja",
     "job": "business",
   }"""
    And request requestputPayload
    When method PUt
    Then status 200
    * print response

Scenario:
  Given url 'https://reqres.in/api/users'
    * def random_string =
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
  * def requestPayload =
  """ {
     "name": "raja",
     "job": "business",
   }"""

  * def randomString = random_string(10)
  * set requestPayload.name = randomString
  * set requestPayload.job = 'Driver'
  And request requestPayload
  When method put
  Then status 200
  * print response
