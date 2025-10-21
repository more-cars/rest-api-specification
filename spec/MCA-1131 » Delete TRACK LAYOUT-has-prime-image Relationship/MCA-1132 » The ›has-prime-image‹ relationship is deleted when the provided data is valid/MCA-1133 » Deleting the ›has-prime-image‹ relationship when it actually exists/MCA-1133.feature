@REQ_MCA-1131
Feature: Delete TRACK LAYOUT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1132
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1133 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "Hot Wheels Corvette"
      And there exists a "has prime image" relationship "R" between "GP Circuit" and "Hot Wheels Corvette"
      When the user deletes the "has prime image" relationship between "GP Circuit" and "Hot Wheels Corvette"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
