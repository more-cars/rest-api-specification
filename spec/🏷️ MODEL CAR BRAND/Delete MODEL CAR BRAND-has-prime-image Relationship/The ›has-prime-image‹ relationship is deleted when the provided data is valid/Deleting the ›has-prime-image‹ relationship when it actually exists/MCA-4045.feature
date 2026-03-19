@REQ_MCA-4043
Feature: Delete MODEL CAR BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4044
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4045
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Matchbox logo"
      And there exists a "has prime image" relationship "R" between "Hot Wheels" and "Matchbox logo"
      When the user deletes the "has prime image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
