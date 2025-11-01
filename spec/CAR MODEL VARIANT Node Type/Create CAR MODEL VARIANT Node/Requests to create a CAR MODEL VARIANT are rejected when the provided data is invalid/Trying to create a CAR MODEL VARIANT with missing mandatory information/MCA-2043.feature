@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2042
  Rule: Requests to create a CAR MODEL VARIANT are rejected when the provided data is invalid

    @TEST_MCA-2043 @implemented
    Scenario: Trying to create a CAR MODEL VARIANT with missing mandatory information
      When the user tries to create a "CAR MODEL VARIANT" "BMW M3" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
