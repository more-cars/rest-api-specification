@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1850
  Rule: The response contains all specified properties when creating a LAP TIME

    @TEST_MCA-1852 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a LAP TIME
      When the user creates a "LAP TIME" "AVUS record" with the following data
        | key         | value        |
        | time        | PT1M33.294S  |
        | driver_name | Klaus Ludwig |
      Then the response should contain the following properties
        | key         | value        |
        | time        | PT1M33.294S  |
        | driver_name | Klaus Ludwig |
        | date        |              |
