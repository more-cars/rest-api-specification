@REQ_MCA-794
Feature: Delete CAR MODEL-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-795
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-796 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Corvette"
      And there exists a "IMAGE" "C5 front"
      And there exists a "has image" relationship "R" between "Corvette" and "C5 front"
      When the user deletes the "has image" relationship between "Corvette" and "C5 front"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
