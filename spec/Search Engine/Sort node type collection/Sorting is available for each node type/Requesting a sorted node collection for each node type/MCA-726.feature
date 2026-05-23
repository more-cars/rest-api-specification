@REQ_MCA-373
Feature: Sort node type collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-720
  Rule: Sorting is available for each node type

    @TEST_MCA-726 @implemented
    Scenario Outline: Requesting a sorted node collection for each node type
      Given there exist 5 "<node_type>"s
      When the user requests a "<node_type>" collection, sorted "asc" by "<node_property>"
      Then the response should return with status code 200
      And the response should return a collection of 5 "<node_type>"s

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
