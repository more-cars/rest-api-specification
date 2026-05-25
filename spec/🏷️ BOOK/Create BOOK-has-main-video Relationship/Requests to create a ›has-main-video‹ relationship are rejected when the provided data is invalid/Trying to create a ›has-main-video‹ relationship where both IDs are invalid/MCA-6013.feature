@REQ_MCA-6007
Feature: Create BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BOOK
  So an API consumer can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6010
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6013 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "BOOK" "F1 in Numbers" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be rejected with status code 404
