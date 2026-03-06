@REQ_MCA-3195
Feature: Get RATING-has-prime-image Relationship

  @RULE_MCA-3200
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3201 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      When the user requests the "has prime image" relationship for "93 Percent"
      Then the request should be rejected with status code 404
