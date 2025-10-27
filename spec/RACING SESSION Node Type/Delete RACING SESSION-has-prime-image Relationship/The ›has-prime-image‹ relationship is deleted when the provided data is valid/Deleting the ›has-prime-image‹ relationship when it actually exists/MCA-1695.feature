@REQ_MCA-1693
Feature: Delete RACING SESSION-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1694
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1695
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has prime image" relationship "R" between "Grand Prix" and "BMW logo"
      When the user deletes the "has prime image" relationship between "Grand Prix" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
