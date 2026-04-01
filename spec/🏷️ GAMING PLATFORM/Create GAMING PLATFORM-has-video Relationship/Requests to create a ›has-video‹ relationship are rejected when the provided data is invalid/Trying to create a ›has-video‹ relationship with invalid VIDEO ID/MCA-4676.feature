@REQ_MCA-4671
Feature: Create GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a GAMING PLATFORM
  So an API consumer can illustrate the GAMING PLATFORM node in a frontend application

  @RULE_MCA-4674
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4676 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "GAMING PLATFORM" "Xbox"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
