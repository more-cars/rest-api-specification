@REQ_MCA-5980
Feature: Create BOOK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-5983
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5984 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be rejected with status code 404
