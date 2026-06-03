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
        | key          | value                        |
        | name         | Deutsche Tourenwagen-Masters |
        | short_name   | DTM                          |
        | founded      | 2000                         |
        | defunct      |                              |
        | organized_by | ITR                          |
        | vehicle_type | touring-cars                 |
        | country_code | DE                           |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING SERIES" "DTM"
