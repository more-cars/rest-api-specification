@REQ_MCA-1817
Feature: Create SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1820
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1823 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "SESSION RESULT" "1st place" does NOT exist
      And "IMAGE" "finish line" does NOT exist
      When the user creates a "has prime image" relationship between "1st place" and "finish line"
      Then the request should be rejected with status code 404
