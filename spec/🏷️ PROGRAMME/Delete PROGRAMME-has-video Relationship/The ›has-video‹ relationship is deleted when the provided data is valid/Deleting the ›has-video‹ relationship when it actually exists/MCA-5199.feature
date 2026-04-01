@REQ_MCA-5197
Feature: Delete PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-5198
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5199 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "The Grand Tour" and "Promo Video"
      When the user deletes the "has-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
