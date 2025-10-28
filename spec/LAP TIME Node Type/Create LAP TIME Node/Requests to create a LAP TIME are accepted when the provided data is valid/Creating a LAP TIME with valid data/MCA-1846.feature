@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1845
  Rule: Requests to create a LAP TIME are accepted when the provided data is valid

    @TEST_MCA-1846 @implemented
    Scenario: Creating a LAP TIME with valid data
      When the user creates a "LAP TIME" "AVUS record" with the following data
        | key         | value        | datatype |
        | time        | PT1M33.294S  | string   |
        | driver_name | Klaus Ludwig | string   |
        | date        | 1996-08-03   | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "LAP TIME" "AVUS record"
