@REQ_MCA-17
Feature: Providing timestamps for all NODEs
  As an API consumer\
  I want all nodes to have timestamps\
  So I can assess how up-to-date the provided information is

  @RULE_MCA-21
  Rule: Returned NODEs always contain the timestamps "created_at" and "updated_at"

    @TEST_MCA-69 @implemented
    Scenario Outline: All requested NODEs should contain valid timestamps
      Given there exist 5 "<node_type>"s
      When the user requests all "<node_type>"s
      And for each item the following properties in the response should contain a valid timestamp
        | key        |
        | created_at |
        | updated_at |

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
        | IMAGE             |
