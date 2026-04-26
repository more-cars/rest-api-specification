@REQ_MCA-5372
Feature: Get LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5377
  Rule: Requests to fetch the ›documented-in-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5378
    Scenario: Trying to fetch the ›documented-in-magazine-issue‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests the "documented in magazine issue" relationship for "fastest lap"
      Then the request should be rejected with status code 404
