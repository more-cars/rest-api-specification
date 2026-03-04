@REQ_MCA-17
Feature: Providing timestamps for all NODEs
  As an API consumer\
  I want all nodes to have timestamps\
  So I can assess how up-to-date the provided information is

  @RULE_MCA-21
  Rule: Returned NODEs always contain the timestamps "created_at" and "updated_at"

    @TEST_MCA-24 @implemented
    Scenario Outline: A requested NODE should contain valid timestamps
      Given there exists a "<node_type>" "A"
      When the user requests the "<node_type>" "A"
      And both timestamps in the response should have a valid format

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
