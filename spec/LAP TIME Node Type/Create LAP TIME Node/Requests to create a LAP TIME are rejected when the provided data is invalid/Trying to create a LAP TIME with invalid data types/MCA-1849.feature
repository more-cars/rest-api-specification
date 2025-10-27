@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1847
  Rule: Requests to create a LAP TIME are rejected when the provided data is invalid

    @TEST_MCA-1849
    Scenario: Trying to create a LAP TIME with invalid data types
      When the user tries to create a "LAP TIME" "AVUS record" with the following data
        | key         | value        | datatype |
        | time        | PT1M33.294S  | boolean  |
        | driver_name | Klaus Ludwig | boolean  |
        | date        | 1996-08-03   | boolean  |
      Then the request should be rejected with status code 400
