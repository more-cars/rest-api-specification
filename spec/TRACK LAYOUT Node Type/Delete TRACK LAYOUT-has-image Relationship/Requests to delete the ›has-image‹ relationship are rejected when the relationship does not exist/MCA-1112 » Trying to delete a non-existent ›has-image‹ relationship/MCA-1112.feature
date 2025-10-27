@REQ_MCA-1104
Feature: Delete TRACK LAYOUT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1111
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1112 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "BMW logo"
      And there exists NO "has image" relationship between "GP Circuit" and "BMW logo"
      When the user deletes the "has image" relationship between "GP Circuit" and "BMW logo"
      Then the request should be rejected with status code 404
