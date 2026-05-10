@REQ_MCA-539
Feature: Create COMPANY Node
  As an API contributor
  I want to be able to create COMPANY nodes
  So I can fill gaps in the database

  @RULE_MCA-549
  Rule: Unknown properties are ignored when creating a COMPANY

    @TEST_MCA-550 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a COMPANY
      When the user creates a "COMPANY" "BMW AG" with the following data
        | key                         | value  |
        | name                        | BMW AG |
        | founded                     | 1916   |
        | defunct                     |        |
        | headquarters_location       | Munich |
        | hq_country_code             | DE     |
        | legal_headquarters_location | Munich |
        | legal_hq_country_code       | DE     |
        | thimbleweed                 | park   |
      Then the response should contain the following properties
        | key                         | value  |
        | name                        | BMW AG |
        | founded                     | 1916   |
        | defunct                     |        |
        | headquarters_location       | Munich |
        | hq_country_code             | DE     |
        | legal_headquarters_location | Munich |
        | legal_hq_country_code       | DE     |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
