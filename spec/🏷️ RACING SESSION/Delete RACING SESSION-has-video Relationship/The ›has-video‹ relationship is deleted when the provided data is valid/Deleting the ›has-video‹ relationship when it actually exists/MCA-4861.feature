@REQ_MCA-4859
Feature: Delete RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-4860
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4861
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Qualifying" and "Promo Video"
      When the user deletes the "has-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
