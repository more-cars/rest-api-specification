@REQ_MCA-3691
Feature: Delete MOTOR SHOW-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3692
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3693 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "CES logo"
      And there exists a "has prime image" relationship "R" between "IAA Frankfurt" and "CES logo"
      When the user deletes the "has prime image" relationship between "IAA Frankfurt" and "CES logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
