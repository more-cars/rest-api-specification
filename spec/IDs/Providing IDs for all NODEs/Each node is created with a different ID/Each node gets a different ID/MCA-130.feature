@REQ_MCA-84
Feature: Providing IDs for all NODEs
  As an API consumer\
  I need all NODEs to have an IDENTIFIER\
  So I can find the NODEs again to reference them in different contexts

  @RULE_MCA-102
  Rule: Each node is created with a different ID

    @TEST_MCA-130 @implemented
    Scenario Outline: Each node gets a different ID
      When the user creates a set "A" of 10 "<node_type>"s
      Then all nodes of set "A" should have a different ID

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
