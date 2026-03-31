@REQ_MCA-5325
Feature: Get MOTOR SHOW-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MOTOR SHOW
  So I can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5330
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5331
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user requests the "has-main-video" relationship for "IAA Frankfurt"
      Then the request should be rejected with status code 404
