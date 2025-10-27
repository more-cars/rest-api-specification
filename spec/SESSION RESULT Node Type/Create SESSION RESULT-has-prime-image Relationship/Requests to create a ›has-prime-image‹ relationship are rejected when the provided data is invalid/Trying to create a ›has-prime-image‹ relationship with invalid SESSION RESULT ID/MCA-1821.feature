@REQ_MCA-1817
Feature: Create SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1820
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1821
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      And there exists a "IMAGE" "finish line"
      When the user creates a "has prime image" relationship between "1st place" and "finish line"
      Then the request should be rejected with status code 404
