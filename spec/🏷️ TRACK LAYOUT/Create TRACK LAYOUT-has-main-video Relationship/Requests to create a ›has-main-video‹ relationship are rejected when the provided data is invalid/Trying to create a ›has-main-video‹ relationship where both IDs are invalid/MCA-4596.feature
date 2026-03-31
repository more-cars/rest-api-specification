@REQ_MCA-4590
Feature: Create TRACK LAYOUT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a TRACK LAYOUT
  So an API consumer can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4593
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4596
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be rejected with status code 404
