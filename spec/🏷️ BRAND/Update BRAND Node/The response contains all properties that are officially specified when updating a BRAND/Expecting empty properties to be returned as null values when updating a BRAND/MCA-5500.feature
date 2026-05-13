@REQ_MCA-5489
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5498
  Rule: The response contains all properties that are officially specified when updating a BRAND

    @TEST_MCA-5500 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a BRAND
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
        | key          | value |
        | name         | BMW_2 |
        | full_name    |       |
        | founded      |       |
        | defunct      |       |
        | wmi          |       |
        | hsn          |       |
        | country_code |       |
      Then the response should contain the following properties
        | key          | value |
        | name         | BMW_2 |
        | full_name    |       |
        | founded      |       |
        | defunct      |       |
        | wmi          |       |
        | hsn          |       |
        | country_code |       |
