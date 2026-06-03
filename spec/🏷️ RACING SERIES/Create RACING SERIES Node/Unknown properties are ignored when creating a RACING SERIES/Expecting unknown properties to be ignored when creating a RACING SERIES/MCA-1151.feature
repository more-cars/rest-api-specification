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
        | key          | value                        |
        | name         | Deutsche Tourenwagen-Masters |
        | short_name   | DTM                          |
        | founded      | 2000                         |
        | defunct      |                              |
        | organized_by | ITR                          |
        | vehicle_type | touring-cars                 |
        | country_code | DE                           |
        | thimbleweed  | park                         |
      Then the response should contain the following properties
        | key          | value                        |
        | name         | Deutsche Tourenwagen-Masters |
        | short_name   | DTM                          |
        | founded      | 2000                         |
        | defunct      |                              |
        | organized_by | ITR                          |
        | vehicle_type | touring-cars                 |
        | country_code | DE                           |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
