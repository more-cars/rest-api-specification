@REQ_MCA-5206
Feature: Create PROGRAMME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a PROGRAMME
  So an API consumer can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5209
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5212 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
