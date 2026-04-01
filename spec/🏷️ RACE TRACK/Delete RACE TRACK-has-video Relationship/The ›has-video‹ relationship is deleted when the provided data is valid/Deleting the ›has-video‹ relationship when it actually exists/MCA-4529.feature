@REQ_MCA-4527
Feature: Delete RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-4528
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4529 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Nürburgring" and "Promo Video"
      When the user deletes the "has-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
