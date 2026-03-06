@REQ_MCA-3184
Feature: Create RATING-has-prime-image Relationship

  @RULE_MCA-3187
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3190 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RATING" "93 Percent" does NOT exist
      And "IMAGE" "Top Rating" does NOT exist
      When the user creates a "has prime image" relationship between "93 Percent" and "Top Rating"
      Then the request should be rejected with status code 404
