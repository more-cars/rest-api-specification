@REQ_MCA-5980
Feature: Create BOOK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-5981
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5982 @implemented
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be confirmed with status code 204
