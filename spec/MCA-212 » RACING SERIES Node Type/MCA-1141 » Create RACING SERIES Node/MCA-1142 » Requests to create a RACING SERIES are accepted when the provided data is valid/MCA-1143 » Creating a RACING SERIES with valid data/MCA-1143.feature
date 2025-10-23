@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1142
  Rule: Requests to create a RACING SERIES are accepted when the provided data is valid

    @TEST_MCA-1143 @implemented
    Scenario: Creating a RACING SERIES with valid data
      When the user creates a "RACING SERIES" "DTM" with the following data
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING SERIES" "DTM"
