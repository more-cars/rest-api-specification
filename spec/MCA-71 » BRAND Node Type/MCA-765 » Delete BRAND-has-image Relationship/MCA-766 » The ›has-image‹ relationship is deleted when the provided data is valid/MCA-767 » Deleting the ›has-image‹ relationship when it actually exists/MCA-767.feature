@REQ_MCA-765
Feature: Delete BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-766
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-767
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists a "has-image" relationship "R" between "Bugatti" and "logo"
      When the user deletes the "has-image" relationship between "Bugatti" and "logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
