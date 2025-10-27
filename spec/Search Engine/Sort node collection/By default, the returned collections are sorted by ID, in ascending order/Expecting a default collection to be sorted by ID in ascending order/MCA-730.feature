@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-724
  Rule: By default, the returned collections are sorted by ID, in ascending order

    @TEST_MCA-730 @implemented
    Scenario Outline: Expecting a default collection to be sorted by ID in ascending order
      Given there exist 3 "<node_type>"s
      When the user requests a "<node_type>" collection
      Then the returned nodes should be sorted "asc" by "id"

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
