@REQ_MCA-3157
Feature: Create RATING-has-image Relationship

  @RULE_MCA-3160
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3162 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RATING" "93 Percent"
      And "IMAGE" "Top Rating" does NOT exist
      When the user creates a "has image" relationship between "93 Percent" and "Top Rating"
      Then the request should be rejected with status code 404
