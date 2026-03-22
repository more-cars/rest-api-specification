@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-723
  Rule: The sorting parameters can be used independently

    @TEST_MCA-729 @implemented
    Scenario Outline: Using the sorting parameters independently
      Given there exist 3 "<node_type>"s
      When the user requests a "<node_type>" collection, sorted "asc"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "desc"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted ""
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted by "id"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted by "<node_property>"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted by ""
      Then the response should return with status code 200

      Examples:
        | node_type         | node_property |
        | COMPANY           | name          |
        | BRAND             | name          |
        | CAR MODEL         | name          |
        | CAR MODEL VARIANT | name          |
        | PRICE             | price         |
        | RACE TRACK        | name          |
        | TRACK LAYOUT      | name          |
        | RACING SERIES     | name          |
        | RACING EVENT      | name          |
        | RACING SESSION    | name          |
        | SESSION RESULT    | driver_name   |
        | LAP TIME          | driver_name   |
        | RACING GAME       | name          |
        | GAMING PLATFORM   | name          |
        | MODEL CAR         | name          |
        | MODEL CAR BRAND   | name          |
        | MAGAZINE          | name          |
        | MAGAZINE ISSUE    | title         |
        | RATING            | rating_value  |
        | PROGRAMME         | name          |
        | PROGRAMME EPISODE | title         |
        | MOTOR SHOW        | name          |
        | IMAGE             | name          |
