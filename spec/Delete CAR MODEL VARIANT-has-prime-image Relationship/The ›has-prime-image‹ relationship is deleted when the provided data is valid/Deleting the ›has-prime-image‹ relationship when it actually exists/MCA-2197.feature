@REQ_MCA-2195
Feature: Delete CAR MODEL VARIANT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2196
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2197 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "test photo"
      And there exists a "has prime image" relationship "R" between "BMW M3" and "test photo"
      When the user deletes the "has prime image" relationship between "BMW M3" and "test photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
