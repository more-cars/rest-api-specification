@REQ_MCA-3384
Feature: Delete PROGRAMME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3391
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3392 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "Top Gear logo"
      And there exists NO "has prime image" relationship between "The Grand Tour" and "Top Gear logo"
      When the user deletes the "has prime image" relationship between "The Grand Tour" and "Top Gear logo"
      Then the request should be rejected with status code 404
