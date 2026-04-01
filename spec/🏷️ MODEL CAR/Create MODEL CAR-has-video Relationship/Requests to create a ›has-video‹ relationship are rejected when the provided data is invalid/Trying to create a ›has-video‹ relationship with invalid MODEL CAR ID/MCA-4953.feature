@REQ_MCA-4949
Feature: Create MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR
  So an API consumer can illustrate the MODEL CAR node in a frontend application

  @RULE_MCA-4952
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4953 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid MODEL CAR ID
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
