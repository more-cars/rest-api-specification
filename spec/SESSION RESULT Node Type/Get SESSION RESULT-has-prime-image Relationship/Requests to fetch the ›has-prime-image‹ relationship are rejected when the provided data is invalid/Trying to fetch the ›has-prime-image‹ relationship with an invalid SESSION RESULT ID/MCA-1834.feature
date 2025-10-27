@REQ_MCA-1828
Feature: Get SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1833
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1834
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      When the user requests the "has prime image" relationship for "1st place"
      Then the request should be rejected with status code 404
