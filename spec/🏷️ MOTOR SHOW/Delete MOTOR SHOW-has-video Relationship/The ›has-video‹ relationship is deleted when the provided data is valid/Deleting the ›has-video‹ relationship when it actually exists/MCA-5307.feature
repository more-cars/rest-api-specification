@REQ_MCA-5305
Feature: Delete MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-5306
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5307
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "IAA Frankfurt" and "Promo Video"
      When the user deletes the "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
