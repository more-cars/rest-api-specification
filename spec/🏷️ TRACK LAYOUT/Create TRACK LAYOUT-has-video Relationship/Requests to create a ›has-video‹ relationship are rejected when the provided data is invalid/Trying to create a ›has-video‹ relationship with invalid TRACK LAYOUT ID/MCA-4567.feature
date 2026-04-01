@REQ_MCA-4563
Feature: Create TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a TRACK LAYOUT
  So an API consumer can illustrate the TRACK LAYOUT node in a frontend application

  @RULE_MCA-4566
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4567 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be rejected with status code 404
