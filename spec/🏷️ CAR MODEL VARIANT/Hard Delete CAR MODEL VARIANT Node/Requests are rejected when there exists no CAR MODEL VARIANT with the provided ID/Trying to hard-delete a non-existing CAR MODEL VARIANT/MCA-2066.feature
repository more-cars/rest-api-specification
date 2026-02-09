@REQ_MCA-2062
Feature: Hard Delete CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to delete a CAR MODEL VARIANT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2065
  Rule: Requests are rejected when there exists no CAR MODEL VARIANT with the provided ID

    @TEST_MCA-2066 @implemented
    Scenario: Trying to hard-delete a non-existing CAR MODEL VARIANT
      Given "CAR MODEL VARIANT" "BMW M99" does NOT exist
      When the user hard-deletes the "CAR MODEL VARIANT" "BMW M99"
      Then the request should be rejected with status code 404
