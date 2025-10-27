@REQ_MCA-1835
Feature: Delete SESSION RESULT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1836
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1837
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has prime image" relationship "R" between "1st place" and "BMW logo"
      When the user deletes the "has prime image" relationship between "1st place" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
