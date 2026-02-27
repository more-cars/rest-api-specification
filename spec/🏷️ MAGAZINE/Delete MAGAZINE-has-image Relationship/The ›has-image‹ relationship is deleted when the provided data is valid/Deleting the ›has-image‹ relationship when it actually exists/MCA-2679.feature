@REQ_MCA-2677
Feature: Delete MAGAZINE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2678
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2679
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists a "has image" relationship "R" between "Top Gear" and "ComputerBild Cover"
      When the user deletes the "has image" relationship between "Top Gear" and "ComputerBild Cover"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
