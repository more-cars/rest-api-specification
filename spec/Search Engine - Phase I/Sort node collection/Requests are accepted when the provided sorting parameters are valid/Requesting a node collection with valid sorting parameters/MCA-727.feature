@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-721
  Rule: Requests are accepted when the provided sorting parameters are valid

    @TEST_MCA-727 @implemented
    Scenario Outline: Requesting a node collection with valid sorting parameters
      Given there exist 7 "<node_type>"s
      When the user requests a "<node_type>" collection, sorted "asc" by "name"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "desc" by "name"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "" by "name"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "asc" by "id"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "asc" by "created_at"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "asc" by ""
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, sorted "" by ""
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
