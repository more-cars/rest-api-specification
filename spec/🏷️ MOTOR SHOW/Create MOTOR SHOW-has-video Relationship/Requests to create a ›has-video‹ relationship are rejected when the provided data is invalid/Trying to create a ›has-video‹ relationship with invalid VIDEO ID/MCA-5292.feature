@REQ_MCA-5287
Feature: Create MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MOTOR SHOW
  So an API consumer can illustrate the MOTOR SHOW node in a frontend application

  @RULE_MCA-5290
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5292
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be rejected with status code 404
