@REQ_MCA-3989
Feature: Delete MODEL CAR BRAND-created-model-car Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-3996
  Rule: Requests to delete the ›created-model-car‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3997
    Scenario: Trying to delete a non-existent ›created-model-car‹ relationship
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "MODEL CAR" "F40 Matchbox"
      And there exists NO "created model car" relationship between "Hot Wheels" and "F40 Matchbox"
      When the user deletes the "created model car" relationship between "Hot Wheels" and "F40 Matchbox"
      Then the request should be rejected with status code 404
