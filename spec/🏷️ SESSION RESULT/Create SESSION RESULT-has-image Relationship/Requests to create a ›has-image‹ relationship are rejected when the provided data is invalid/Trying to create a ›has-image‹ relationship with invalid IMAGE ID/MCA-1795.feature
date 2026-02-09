@REQ_MCA-1790
Feature: Create SESSION RESULT-has-image Relationship

  @RULE_MCA-1793
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1795 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "SESSION RESULT" "1st place"
      And "IMAGE" "podium" does NOT exist
      When the user creates a "has image" relationship between "1st place" and "podium"
      Then the request should be rejected with status code 404
