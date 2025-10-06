@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-722
  Rule: Requests are rejected when the provided sorting parameters are invalid

    @TEST_MCA-728
    Scenario Outline: Requesting a node collection with invalid sorting parameters
      When the user requests a "<node_type>" collection, sorted "ascending" by "name"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "descending" by "name"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "null" by "name"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "asc" by "internal_id"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "asc" by "unknown_property"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "asc" by "null"
      Then the response should return with status code 400
      When the user requests a "<node_type>" collection, sorted "null" by "null"
      Then the response should return with status code 400

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
