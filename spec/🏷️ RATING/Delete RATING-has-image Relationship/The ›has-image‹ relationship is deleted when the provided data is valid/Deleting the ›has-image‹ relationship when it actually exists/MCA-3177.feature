@REQ_MCA-3175
Feature: Delete RATING-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3176
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3177 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "race track map"
      And there exists a "has image" relationship "R" between "93 Percent" and "race track map"
      When the user deletes the "has image" relationship between "93 Percent" and "race track map"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
