@REQ_MCA-3781
Feature: Delete PROGRAMME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3788
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3789 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "PROGRAMME" "Top Gear"
      And there exists a "IMAGE" "Fifth Gear logo"
      And there exists NO "has image" relationship between "Top Gear" and "Fifth Gear logo"
      When the user deletes the "has image" relationship between "Top Gear" and "Fifth Gear logo"
      Then the request should be rejected with status code 404
