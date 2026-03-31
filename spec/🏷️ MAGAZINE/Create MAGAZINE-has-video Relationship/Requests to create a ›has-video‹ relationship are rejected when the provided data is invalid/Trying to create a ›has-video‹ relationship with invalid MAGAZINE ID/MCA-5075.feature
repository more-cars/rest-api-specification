@REQ_MCA-5071
Feature: Create MAGAZINE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE
  So an API consumer can illustrate the MAGAZINE node in a frontend application

  @RULE_MCA-5074
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5075
    Scenario: Trying to create a ›has-video‹ relationship with invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Top Gear" and "Promo Video"
      Then the request should be rejected with status code 404
