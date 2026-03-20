@REQ_MCA-3803
Feature: Create MODEL CAR BRAND Node
  As an API contributor\
  I want to be able to create MODEL CAR BRANDS\
  So I can fill gaps in the database

  @RULE_MCA-3806
  Rule: Requests to create a MODEL CAR BRAND are rejected when the provided data is invalid

    @TEST_MCA-3807 @implemented
    Scenario: Trying to create a MODEL CAR BRAND with missing mandatory information
      When the user tries to create a "MODEL CAR BRAND" "Hot Wheels" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
