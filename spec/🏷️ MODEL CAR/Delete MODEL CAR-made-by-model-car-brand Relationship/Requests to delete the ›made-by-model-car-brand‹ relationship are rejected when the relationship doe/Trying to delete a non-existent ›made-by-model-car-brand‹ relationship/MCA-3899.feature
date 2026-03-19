@REQ_MCA-3891
Feature: Delete MODEL CAR-made-by-model-car-brand Relationship
  As an API contributor
  I want to be able to disconnect MODEL CAR BRANDS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3898
  Rule: Requests to delete the ›made-by-model-car-brand‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3899
    Scenario: Trying to delete a non-existent ›made-by-model-car-brand‹ relationship
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists NO "made by model car brand" relationship between "F40 Matchbox" and "Hot Wheels"
      When the user deletes the "made by model car brand" relationship between "F40 Matchbox" and "Hot Wheels"
      Then the request should be rejected with status code 404
