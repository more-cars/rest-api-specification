@REQ_MCA-2168
Feature: Delete CAR MODEL VARIANT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2169
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2170 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "Toyota logo"
      And there exists a "has image" relationship "R" between "BMW M3" and "Toyota logo"
      When the user deletes the "has image" relationship between "BMW M3" and "Toyota logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
