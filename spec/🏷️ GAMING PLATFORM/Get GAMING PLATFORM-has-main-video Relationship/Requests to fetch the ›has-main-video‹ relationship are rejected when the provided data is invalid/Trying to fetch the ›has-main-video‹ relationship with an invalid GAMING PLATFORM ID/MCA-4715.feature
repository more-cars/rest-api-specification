@REQ_MCA-4709
Feature: Get GAMING PLATFORM-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a GAMING PLATFORM
  So I can instantly load the VIDEO that best represents the GAMING PLATFORM

  @RULE_MCA-4714
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4715
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "Xbox" does NOT exist
      When the user requests the "has-main-video" relationship for "Xbox"
      Then the request should be rejected with status code 404
