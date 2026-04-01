@REQ_MCA-4716
Feature: Delete GAMING PLATFORM-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a GAMING PLATFORM
  So I can clean up bad data or test data

  @RULE_MCA-4717
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4718 @implemented
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "Xbox" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Xbox" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
