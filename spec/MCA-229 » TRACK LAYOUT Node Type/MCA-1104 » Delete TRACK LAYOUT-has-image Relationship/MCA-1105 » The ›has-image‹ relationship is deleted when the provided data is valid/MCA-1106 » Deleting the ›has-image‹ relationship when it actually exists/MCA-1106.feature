@REQ_MCA-1104
Feature: Delete TRACK LAYOUT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1105
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1106 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has image" relationship "R" between "GP Circuit" and "BMW logo"
      When the user deletes the "has image" relationship between "GP Circuit" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
