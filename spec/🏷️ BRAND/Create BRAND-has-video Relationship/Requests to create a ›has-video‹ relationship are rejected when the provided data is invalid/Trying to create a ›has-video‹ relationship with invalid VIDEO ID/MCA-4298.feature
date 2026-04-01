@REQ_MCA-4293
Feature: Create BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BRAND
  So an API consumer can illustrate the BRAND node in a frontend application

  @RULE_MCA-4296
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4298 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "BRAND" "BMW"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "BMW" and "Promo Video"
      Then the request should be rejected with status code 404
