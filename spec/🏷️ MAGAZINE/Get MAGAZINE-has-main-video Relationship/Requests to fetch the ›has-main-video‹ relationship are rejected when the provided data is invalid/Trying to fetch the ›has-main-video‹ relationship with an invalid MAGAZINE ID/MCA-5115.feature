@REQ_MCA-5109
Feature: Get MAGAZINE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MAGAZINE
  So I can instantly load the VIDEO that best represents the MAGAZINE

  @RULE_MCA-5114
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5115
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      When the user requests the "has-main-video" relationship for "Top Gear"
      Then the request should be rejected with status code 404
