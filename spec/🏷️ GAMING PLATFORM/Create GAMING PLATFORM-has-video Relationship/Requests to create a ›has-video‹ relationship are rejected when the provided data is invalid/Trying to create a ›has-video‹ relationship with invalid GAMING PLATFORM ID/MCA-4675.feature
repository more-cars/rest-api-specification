@REQ_MCA-4671
Feature: Create GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a GAMING PLATFORM
  So an API consumer can illustrate the GAMING PLATFORM node in a frontend application

  @RULE_MCA-4674
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4675
    Scenario: Trying to create a ›has-video‹ relationship with invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "Xbox" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
