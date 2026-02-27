@REQ_MCA-2704
Feature: Delete MAGAZINE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2705
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2706 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "ComputerBild cover"
      And there exists a "has prime image" relationship "R" between "Top Gear" and "ComputerBild cover"
      When the user deletes the "has prime image" relationship between "Top Gear" and "ComputerBild cover"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
