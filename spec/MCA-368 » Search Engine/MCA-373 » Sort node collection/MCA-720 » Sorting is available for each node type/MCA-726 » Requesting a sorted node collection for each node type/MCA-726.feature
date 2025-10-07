@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-720
  Rule: Sorting is available for each node type

    @TEST_MCA-726
    Scenario Outline: Requesting a sorted node collection for each node type
      Given there exist 5 "<node_type>"s
      When the user requests a "<node_type>" collection, sorted "asc" by "name"
      Then the response should return with status code 200
      And the response should return a collection of 5 "<node_type>"s

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
