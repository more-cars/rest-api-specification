@REQ_MCA-1973
Feature: Delete LAP TIME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1980
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1981 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "LAP TIME" "test lap"
      And there exists a "IMAGE" "track record"
      And there exists NO "has prime image" relationship between "test lap" and "track record"
      When the user deletes the "has prime image" relationship between "test lap" and "track record"
      Then the request should be rejected with status code 404
