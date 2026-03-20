@REQ_MCA-3964
Feature: Hard Delete MODEL CAR BRAND Node
  As an API contributor
  I want to be able to delete a MODEL CAR BRAND
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3967
  Rule: Requests are rejected when there exists no MODEL CAR BRAND with the provided ID

    @TEST_MCA-3968 @implemented
    Scenario: Trying to hard-delete a non-existing MODEL CAR BRAND
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user hard-deletes the "MODEL CAR BRAND" "Hot Wheels"
      Then the request should be rejected with status code 404
