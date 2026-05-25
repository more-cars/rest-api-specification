@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5908
  Rule: Requests to create a BOOK are rejected when the provided data is invalid

    @TEST_MCA-5909 @implemented
    Scenario: Trying to create a BOOK with missing mandatory information
      When the user tries to create a "BOOK" with the following data
        | key | value |
      Then the request should be rejected with status code 400
