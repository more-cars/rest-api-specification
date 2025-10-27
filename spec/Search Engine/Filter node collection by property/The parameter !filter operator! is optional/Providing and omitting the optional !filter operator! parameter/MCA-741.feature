@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-735
  Rule: The parameter "filter operator" is optional

    @TEST_MCA-741 @implemented
    Scenario Outline: Providing and omitting the optional "filter operator" parameter
      Given there exist 4 "<node_type>"s
      When the user requests a "<node_type>" collection, filtered by "id" "gt" "1"
      Then the response should return with status code 200
      When the user requests a "<node_type>" collection, filtered by "id" "1"
      Then the response should return with status code 200

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
