@REQ_MCA-1844
Feature: Create LAP TIME Node
  As an API contributor
  I want to be able to create LAP TIMES
  So I can fill gaps in the database

  @RULE_MCA-1847
  Rule: Requests to create a LAP TIME are rejected when the provided data is invalid

    @TEST_MCA-1849 @implemented
    Scenario: Trying to create a LAP TIME with invalid data types
      When the user tries to create a "LAP TIME" with the following data
        | key         | value |
        | time        | true  |
        | driver_name | true  |
        | date        | true  |
      Then the request should be rejected with status code 400
