@REQ_MCA-5233
Feature: Create PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME EPISODE
  So an API consumer can illustrate the PROGRAMME EPISODE node in a frontend application

  @RULE_MCA-5236
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5237
    Scenario: Trying to create a ›has-video‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
