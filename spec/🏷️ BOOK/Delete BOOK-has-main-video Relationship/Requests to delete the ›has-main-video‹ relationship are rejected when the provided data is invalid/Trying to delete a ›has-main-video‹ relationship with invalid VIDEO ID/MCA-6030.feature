@REQ_MCA-6025
Feature: Delete BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6028
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6030 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "BOOK" "F1 in Numbers"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be rejected with status code 404
