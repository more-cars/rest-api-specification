@REQ_MCA-539
Feature: Create COMPANY Node
  As an API contributor
  I want to be able to create COMPANY nodes
  So I can fill gaps in the database

  @RULE_MCA-542
  Rule: Requests to create a COMPANY are rejected when the provided data is invalid

    @TEST_MCA-544 @implemented
    Scenario: Trying to create a COMPANY with invalid data types
      When the user tries to create a "COMPANY" with the following data
        | key                         | value |
        | name                        | true  |
        | founded                     | true  |
        | defunct                     | true  |
        | headquarters_location       | true  |
        | hq_country_code             | true  |
        | legal_headquarters_location | true  |
        | legal_hq_country_code       | true  |
      Then the response should return with status code 400
