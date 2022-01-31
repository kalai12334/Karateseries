Feature: fetching User Details
  Scenario: JSon reader
    * def jsonObject =
    """[
    {
    "name":"Tom",
   "city":"Bangalore",
   "age":25
   },
   {
   "name":"peter",
   "city":"LA",
   "age":34
   }
    ]"""
    * print jsonObject
    * print jsonObject[0].name + " " + jsonObject[0].city + " "+jsonObject[0].age
    * print jsonObject[1].name + " " +jsonObject[1].city + " "+jsonObject[1].age


  Scenario:Complex Json reader
  * def jsonObject =
  """{
  "glossary": {
  "title": "example glossary",
  "GlossDiv": {
  "title": "S",
  "GlossList": {
  "GlossEntry": {
  "ID": "SGML",
  "SortAs": "SGML",
  "GlossTerm": "Standard Generalized Markup Language",
  "Acronym": "SGML",
  "Abbrev": "ISO 8879:1986",
  "GlossDef": {
  "para": "A meta-markup language, used to create markup languages such as DocBook.",
  "GlossSeeAlso": ["GML", "XML"]
  },
  "GlossSee": "markup"
  }
  }
  }
  }
  }"""

  * print jsonObject.glossary.GlossDiv.
