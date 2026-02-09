@REQ_MCA-1141
Feature: Create RACING SERIES Node
  As an API contributor
  I want to be able to create RACING SERIES
  So I can fill gaps in the database

  @RULE_MCA-1150
  Rule: Unknown properties are ignored when creating a RACING SERIES

    @TEST_MCA-1151 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RACING SERIES
      When the user creates a "RACING SERIES" "DTM" with the following data
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
        | thimbleweed  | park                         | string   |
      Then the response should contain the following properties
        | key          | value                        | datatype |
        | name         | Deutsche Tourenwagen-Masters | string   |
        | short_name   | DTM                          | string   |
        | founded      | 2000                         | number   |
        | defunct      |                              | number   |
        | organized_by | ITR                          | string   |
        | vehicle_type | touring cars                 | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
