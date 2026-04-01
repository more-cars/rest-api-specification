@REQ_MCA-4617
Feature: Create RACING GAME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING GAME
  So an API consumer can illustrate the RACING GAME node in a frontend application

  @RULE_MCA-4620
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4621 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
