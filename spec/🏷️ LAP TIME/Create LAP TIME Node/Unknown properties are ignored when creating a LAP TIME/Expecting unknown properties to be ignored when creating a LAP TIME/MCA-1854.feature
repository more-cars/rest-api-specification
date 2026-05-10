@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1853
  Rule: Unknown properties are ignored when creating a LAP TIME

    @TEST_MCA-1854 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a LAP TIME
      When the user creates a "LAP TIME" "AVUS record" with the following data
        | key         | value        |
        | time        | PT1M33.294S  |
        | driver_name | Klaus Ludwig |
        | date        | 1996-08-03   |
        | thimbleweed | park         |
      Then the response should contain the following properties
        | key         | value        |
        | time        | PT1M33.294S  |
        | driver_name | Klaus Ludwig |
        | date        | 1996-08-03   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
