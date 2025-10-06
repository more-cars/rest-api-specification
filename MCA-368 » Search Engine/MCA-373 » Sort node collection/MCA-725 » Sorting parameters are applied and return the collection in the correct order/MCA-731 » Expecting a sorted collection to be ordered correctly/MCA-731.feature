@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-725
  Rule: Sorting parameters are applied and return the collection in the correct order

    @TEST_MCA-731
    Scenario Outline: Expecting a sorted collection to be ordered correctly
      Given there exist 3 "<node_type>"s
      When the user requests a "<node_type>" collection, sorted "desc" by "name"
      Then the returned nodes should be sorted "desc" by "name"

      Examples:
        | node_type |
        | COMPANY   |
        | BRAND     |
        | CAR MODEL |
        | IMAGE     |
