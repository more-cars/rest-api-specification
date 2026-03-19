@REQ_MCA-4016
Feature: Delete MODEL CAR BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4017
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4018
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Matchbox logo"
      And there exists a "has image" relationship "R" between "Hot Wheels" and "Matchbox logo"
      When the user deletes the "has image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
