@REQ_MCA-4601
Feature: Get TRACK LAYOUT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a TRACK LAYOUT
  So I can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4606
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4607
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      When the user requests the "has-main-video" relationship for "Nordschleife"
      Then the request should be rejected with status code 404
