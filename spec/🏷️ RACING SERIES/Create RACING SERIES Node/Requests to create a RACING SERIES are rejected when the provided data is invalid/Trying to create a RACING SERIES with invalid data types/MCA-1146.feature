@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1144
  Rule: Requests to create a RACING SERIES are rejected when the provided data is invalid

    @TEST_MCA-1146 @implemented
    Scenario: Trying to create a RACING SERIES with invalid data types
      When the user tries to create a "RACING SERIES" "DTM" with the following data
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | boolean  |
        | short_name   | DTM                          | boolean  |
        | founded      | 2000                         | boolean  |
        | defunct      |                              | boolean  |
        | organized_by | ITR                          | boolean  |
        | vehicle_type | touring cars                 | boolean  |
      Then the request should be rejected with status code 400
