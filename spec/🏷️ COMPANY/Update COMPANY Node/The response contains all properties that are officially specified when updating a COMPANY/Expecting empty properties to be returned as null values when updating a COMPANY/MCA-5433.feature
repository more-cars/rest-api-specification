@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5431
  Rule: The response contains all properties that are officially specified when updating a COMPANY

    @TEST_MCA-5433
    Scenario: Expecting empty properties to be returned as null values when updating a COMPANY
      Given there exists a "COMPANY" "BMW AG"
      When the user updates the node "BMW AG" with the following data
        | key                         | value    |
        | name                        | BMW AG_2 |
        | founded                     |          |
        | defunct                     |          |
        | headquarters_location       |          |
        | hq_country_code             |          |
        | legal_headquarters_location |          |
        | legal_hq_country_code       |          |
      Then the response should contain the following properties
        | key                         | value    |
        | name                        | BMW AG_2 |
        | founded                     |          |
        | defunct                     |          |
        | headquarters_location       |          |
        | hq_country_code             |          |
        | legal_headquarters_location |          |
        | legal_hq_country_code       |          |
