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
      When the user requests a "<node_type>" collection, sorted by "name"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted by ""
      Then the response should return with status code 200

      Examples:
        | node_type     |
        | COMPANY       |
        | BRAND         |
        | CAR MODEL     |
        | RACE TRACK    |
        | TRACK LAYOUT  |
        | RACING SERIES |
        | RACING EVENT  |
        | IMAGE         |
