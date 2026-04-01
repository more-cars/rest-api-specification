@REQ_MCA-5179
Feature: Create PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME
  So an API consumer can illustrate the PROGRAMME node in a frontend application

  @RULE_MCA-5182
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5183 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
