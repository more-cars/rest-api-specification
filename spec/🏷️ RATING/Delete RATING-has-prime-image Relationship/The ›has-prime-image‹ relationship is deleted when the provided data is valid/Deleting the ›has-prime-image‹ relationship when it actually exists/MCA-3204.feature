@REQ_MCA-3202
Feature: Delete RATING-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3203
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3204 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "race track map"
      And there exists a "has prime image" relationship "R" between "93 Percent" and "race track map"
      When the user deletes the "has prime image" relationship between "93 Percent" and "race track map"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
