@REQ_MCA-5098
Feature: Create MAGAZINE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE

  @RULE_MCA-5101
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5104
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "MAGAZINE" "Top Gear" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Top Gear" and "Promo Video"
      Then the request should be rejected with status code 404
