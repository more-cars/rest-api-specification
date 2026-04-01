@REQ_MCA-4563
Feature: Create TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a TRACK LAYOUT
  So an API consumer can illustrate the TRACK LAYOUT node in a frontend application

  @RULE_MCA-4566
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4568 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be rejected with status code 404
