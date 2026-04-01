@REQ_MCA-4347
Feature: Create COMPANY-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a COMPANY
  So an API consumer can illustrate the COMPANY node in a frontend application

  @RULE_MCA-4350
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4351 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid COMPANY ID
      Given "COMPANY" "BMW AG" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "BMW AG" and "Promo Video"
      Then the request should be rejected with status code 404
