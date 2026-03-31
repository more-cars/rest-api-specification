@REQ_MCA-4879
Feature: Get RACING SESSION-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SESSION
  So I can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4884
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4885
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      When the user requests the "has-main-video" relationship for "Qualifying"
      Then the request should be rejected with status code 404
