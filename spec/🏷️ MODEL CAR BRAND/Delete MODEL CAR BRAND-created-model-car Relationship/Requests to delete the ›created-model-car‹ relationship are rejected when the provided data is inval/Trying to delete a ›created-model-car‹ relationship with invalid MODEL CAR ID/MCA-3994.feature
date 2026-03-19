@REQ_MCA-3989
Feature: Delete MODEL CAR BRAND-created-model-car Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-3992
  Rule: Requests to delete the ›created-model-car‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3994
    Scenario: Trying to delete a ›created-model-car‹ relationship with invalid MODEL CAR ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And "MODEL CAR" "F40 Matchbox" does NOT exist
      When the user deletes the "created model car" relationship between "Hot Wheels" and "F40 Matchbox"
      Then the request should be rejected with status code 404
