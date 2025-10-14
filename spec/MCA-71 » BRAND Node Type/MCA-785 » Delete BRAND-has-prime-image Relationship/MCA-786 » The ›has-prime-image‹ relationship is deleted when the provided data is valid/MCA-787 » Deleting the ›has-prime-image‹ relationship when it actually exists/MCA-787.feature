@REQ_MCA-785
Feature: Delete BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-786
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-787 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "Ferrari logo"
      And there exists a "has prime image" relationship "R" between "Bugatti" and "Ferrari logo"
      When the user deletes the "has prime image" relationship between "Bugatti" and "Ferrari logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
