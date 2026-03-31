@REQ_MCA-4347
Feature: Create COMPANY-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a COMPANY
  So an API consumer can illustrate the COMPANY node in a frontend application

  @RULE_MCA-4350
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4352
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "COMPANY" "BMW AG"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "BMW AG" and "Promo Video"
      Then the request should be rejected with status code 404
