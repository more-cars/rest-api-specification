@REQ_MCA-4751
Feature: Delete RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4752
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4753
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Formula 1" and "Promo Video"
      When the user deletes the "has-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
