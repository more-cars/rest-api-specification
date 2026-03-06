@REQ_MCA-3157
Feature: Create RATING-has-image Relationship

  @RULE_MCA-3160
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3161 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      And there exists a "IMAGE" "Top Rating"
      When the user creates a "has image" relationship between "93 Percent" and "Top Rating"
      Then the request should be rejected with status code 404
