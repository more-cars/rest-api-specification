@REQ_MCA-1131
Feature: Delete TRACK LAYOUT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1138
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1139 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "Hot Wheels Corvette"
      And there exists NO "has prime image" relationship between "GP Circuit" and "Hot Wheels Corvette"
      When the user deletes the "has prime image" relationship between "GP Circuit" and "Hot Wheels Corvette"
      Then the request should be rejected with status code 404
