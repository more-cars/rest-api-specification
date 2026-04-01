@REQ_MCA-4895
Feature: Create LAP TIME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a LAP TIME
  So an API consumer can illustrate the LAP TIME node in a frontend application

  @RULE_MCA-4898
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4899 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "Fastest Lap" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be rejected with status code 404
