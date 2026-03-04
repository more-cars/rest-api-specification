@REQ_MCA-84
Feature: Providing IDs for all NODEs
  As an API consumer\
  I need all NODEs to have an IDENTIFIER\
  So I can find the NODEs again to reference them in different contexts

  @RULE_MCA-100
  Rule: Each created node returns with a valid ID

    @TEST_MCA-131 @implemented
    Scenario Outline: Nodes are created with valid IDs
      When the user creates a "<node_type>"
      Then the response should contain an ID greater than 0
      And the response should contain an ID lesser than 4294967296

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
