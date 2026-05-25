@REQ_MCA-6018
Feature: Get BOOK-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BOOK
  So I can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6023
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6024 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user requests the "has-main-video" relationship for "F1 in Numbers"
      Then the request should be rejected with status code 404
