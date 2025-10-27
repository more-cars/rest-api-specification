@REQ_MCA-1462
Feature: Delete RACING EVENT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1469
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1470 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "IMAGE" "DTM race"
      And there exists NO "has prime image" relationship between "GP Monaco" and "DTM race"
      When the user deletes the "has prime image" relationship between "GP Monaco" and "DTM race"
      Then the request should be rejected with status code 404
