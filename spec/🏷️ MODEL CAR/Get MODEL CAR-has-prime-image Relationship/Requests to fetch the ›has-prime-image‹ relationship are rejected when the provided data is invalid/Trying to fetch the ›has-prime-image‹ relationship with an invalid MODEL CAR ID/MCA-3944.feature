@REQ_MCA-3938
Feature: Get MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3943
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3944 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      When the user requests the "has prime image" relationship for "F40 Scale Model"
      Then the request should be rejected with status code 404
