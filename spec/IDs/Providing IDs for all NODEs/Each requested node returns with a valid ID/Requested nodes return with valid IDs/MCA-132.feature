@REQ_MCA-84
Feature: Providing IDs for all NODEs
  As an API consumer\
  I need all NODEs to have an IDENTIFIER\
  So I can find the NODEs again to reference them in different contexts

  @RULE_MCA-101
  Rule: Each requested node returns with a valid ID

    @TEST_MCA-132 @implemented
    Scenario Outline: Requested nodes return with valid IDs
      Given there exists a "<node_type>" "A"
      When the user requests the "<node_type>" "A"
      Then the response should contain an ID greater than 0
      And the response should contain an ID lesser than 4294967296
      Given there exist 8 "<node_type>"s
      When the user requests a "<node_type>" collection
      Then the property "id" of all items in the response should be a number greater than 0
      And the property "id" of all items in the response should be a number lesser than 4294967296

      Examples:
        | node_type         |
        | COMPANY           |
        | BRAND             |
        | CAR MODEL         |
        | CAR MODEL VARIANT |
        | RACE TRACK        |
        | TRACK LAYOUT      |
        | RACING SERIES     |
        | RACING EVENT      |
        | RACING SESSION    |
        | SESSION RESULT    |
        | LAP TIME          |
        | RACING GAME       |
        | GAMING PLATFORM   |
        | MAGAZINE          |
        | MAGAZINE ISSUE    |
        | IMAGE             |
