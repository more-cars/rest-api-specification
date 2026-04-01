@REQ_MCA-4401
Feature: Create CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL
  So an API consumer can illustrate the CAR MODEL node in a frontend application

  @RULE_MCA-4404
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4405 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid CAR MODEL ID
      Given "CAR MODEL" "Testarossa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be rejected with status code 404
