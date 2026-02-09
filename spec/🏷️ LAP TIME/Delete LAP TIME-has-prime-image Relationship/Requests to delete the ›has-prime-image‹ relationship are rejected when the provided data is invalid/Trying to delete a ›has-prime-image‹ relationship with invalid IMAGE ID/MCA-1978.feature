@REQ_MCA-1973
Feature: Delete LAP TIME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1976
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1978 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "LAP TIME" "test lap"
      And "IMAGE" "track record" does NOT exist
      When the user deletes the "has prime image" relationship between "test lap" and "track record"
      Then the request should be rejected with status code 404
