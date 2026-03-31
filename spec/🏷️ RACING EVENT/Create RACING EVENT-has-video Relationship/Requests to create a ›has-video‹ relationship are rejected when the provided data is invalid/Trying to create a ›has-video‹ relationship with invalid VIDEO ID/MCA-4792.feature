@REQ_MCA-4787
Feature: Create RACING EVENT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING EVENT
  So an API consumer can illustrate the RACING EVENT node in a frontend application

  @RULE_MCA-4790
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4792
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the request should be rejected with status code 404
