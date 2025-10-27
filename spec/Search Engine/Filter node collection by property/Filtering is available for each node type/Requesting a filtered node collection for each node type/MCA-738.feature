@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-732
  Rule: Filtering is available for each node type

    @TEST_MCA-738 @implemented
    Scenario Outline: Requesting a filtered node collection for each node type
      Given there exist 4 "<node_type>"s
      When the user requests a "<node_type>" collection, filtered by "id" "neq" "-1"
      Then the response should return with status code 200
      And the response should return a collection of 4 "<node_type>"s

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
