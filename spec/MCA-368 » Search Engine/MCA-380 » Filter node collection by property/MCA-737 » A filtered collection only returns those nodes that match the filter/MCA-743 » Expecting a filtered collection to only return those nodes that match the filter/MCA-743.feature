@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-737
  Rule: A filtered collection only returns those nodes that match the filter

    @TEST_MCA-743 @implemented
    Scenario Outline: Expecting a filtered collection to only return those nodes that match the filter
      Given there exists a "<node_type>" "<node_1>" with "name" "<node_1>"
      And there exists a "<node_type>" "<node_2>" with "name" "<node_2>"
      And there exists a "<node_type>" "<node_3>" with "name" "<node_3>"
      When the user requests a "<node_type>" collection, filtered by "name" "eq" "<node_1>"
      Then the response should return with status code 200
      And the response should return a collection of 1 "<node_type>"s

      Examples:
        | node_type | node_1   | node_2    | node_3             |
        | COMPANY   | BMW AG   | AUDI AG   | Ford Motor Company |
        | BRAND     | BMW      | Audi      | Ford               |
        | CAR MODEL | Z8       | RS 4      | Mustang            |
        | IMAGE     | bmw logo | audi logo | ford logo          |
