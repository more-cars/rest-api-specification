@REQ_MCA-4036
Feature: Get MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4041
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4042 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user requests the "has prime image" relationship for "Hot Wheels"
      Then the request should be rejected with status code 404
