@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-733
  Rule: Requests are accepted when the provided filtering parameters are valid

    @TEST_MCA-739
    Scenario Outline: Requesting a node collection with valid filtering parameters
      Given there exist 4 "<node_type>"s
      When the user requests a "<node_type>" collection, filtered by "id" "eq" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "neq" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "lt" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "gt" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "lte" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "gte" "1"
      Then the response should return with status code 200

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
