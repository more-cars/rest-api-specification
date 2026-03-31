@REQ_MCA-4733
Feature: Create RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SERIES
  So an API consumer can illustrate the RACING SERIES node in a frontend application

  @RULE_MCA-4736
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4737
    Scenario: Trying to create a ›has-video‹ relationship with invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
