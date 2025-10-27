@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-734
  Rule: Requests are rejected when the provided filtering parameters are invalid

    @TEST_MCA-740 @implemented
    Scenario Outline: Requesting a node collection with invalid filtering parameters
      Given there exist 4 "<node_type>"s
      When the user requests a "<node_type>" collection, filtered by "unknown_property" "lt" "1"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, filtered by "id" "iquell" "1"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, filtered by "id" "gte" ""
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, filtered by "" "gte" "1"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, filtered by "" "" "1"
      Then the response should return with status code 400

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
