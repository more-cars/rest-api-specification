@REQ_MCA-4716
Feature: Delete GAMING PLATFORM-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a GAMING PLATFORM
  So I can clean up bad data or test data

  @RULE_MCA-4719
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4721 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "GAMING PLATFORM" "Xbox"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Xbox" and "Promo Video"
      Then the request should be rejected with status code 404
