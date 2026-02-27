@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2632
  Rule: Requests to create a MAGAZINE are rejected when the provided data is invalid

    @TEST_MCA-2633 @implemented
    Scenario: Trying to create a MAGAZINE with missing mandatory information
      When the user tries to create a "MAGAZINE" "Top Gear" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
