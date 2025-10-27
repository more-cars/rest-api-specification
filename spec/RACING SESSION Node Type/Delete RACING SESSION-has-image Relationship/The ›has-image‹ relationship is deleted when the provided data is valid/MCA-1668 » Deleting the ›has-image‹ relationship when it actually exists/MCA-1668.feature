@REQ_MCA-1666
Feature: Delete RACING SESSION-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1667
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1668
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "qualifying photo"
      And there exists a "has image" relationship "R" between "Grand Prix" and "qualifying photo"
      When the user deletes the "has image" relationship between "Grand Prix" and "qualifying photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
