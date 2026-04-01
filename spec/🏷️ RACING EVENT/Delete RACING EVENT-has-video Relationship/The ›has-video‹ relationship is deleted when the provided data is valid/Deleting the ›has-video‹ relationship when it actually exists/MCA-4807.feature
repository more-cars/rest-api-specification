@REQ_MCA-4805
Feature: Delete RACING EVENT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-4806
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4807 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "F1 GP Monaco" and "Promo Video"
      When the user deletes the "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
