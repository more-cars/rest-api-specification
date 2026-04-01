@REQ_MCA-4689
Feature: Delete GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-4692
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4694 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "GAMING PLATFORM" "Xbox"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
