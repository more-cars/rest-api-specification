@REQ_MCA-3781
Feature: Delete PROGRAMME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3782
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3783 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "PROGRAMME" "Top Gear"
      And there exists a "IMAGE" "Fifth Gear logo"
      And there exists a "has image" relationship "R" between "Top Gear" and "Fifth Gear logo"
      When the user deletes the "has image" relationship between "Top Gear" and "Fifth Gear logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
