@REQ_MCA-3884
Feature: Get MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3889
  Rule: Requests to fetch the ›made-by-model-car-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3890
    Scenario: Trying to fetch the ›made-by-model-car-brand‹ relationship with an invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      When the user requests the "made by model car brand" relationship for "F40 Scale Model"
      Then the request should be rejected with status code 404
