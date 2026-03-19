@REQ_MCA-3900
Feature: Create MODEL CAR-has-image Relationship

  @RULE_MCA-3903
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3904
    Scenario: Trying to create a ›has-image‹ relationship with invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      And there exists a "IMAGE" "F40 Matchbox photo"
      When the user creates a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the request should be rejected with status code 404
