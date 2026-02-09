@REQ_MCA-1835
Feature: Delete SESSION RESULT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1842
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1843 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "BMW logo"
      And there exists NO "has prime image" relationship between "1st place" and "BMW logo"
      When the user deletes the "has prime image" relationship between "1st place" and "BMW logo"
      Then the request should be rejected with status code 404
