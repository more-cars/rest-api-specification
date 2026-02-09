@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1147
  Rule: The response contains all specified properties when creating a RACING SERIES

    @TEST_MCA-1148 @implemented
    Scenario: Expecting all properties to be returned when creating a RACING SERIES
      When the user creates a "RACING SERIES" "DTM" with the following data
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
      Then the response should contain the following properties
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
