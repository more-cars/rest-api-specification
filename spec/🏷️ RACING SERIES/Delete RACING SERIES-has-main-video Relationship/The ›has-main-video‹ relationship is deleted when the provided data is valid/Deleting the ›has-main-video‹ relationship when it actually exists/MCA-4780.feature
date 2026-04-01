@REQ_MCA-4778
Feature: Delete RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4779
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4780 @implemented
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "Formula 1" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
