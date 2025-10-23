@REQ_MCA-1256
Feature: Delete RACING SERIES-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1263
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1264 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "Tokyo Drift"
      And there exists NO "has prime image" relationship between "DTM" and "Tokyo Drift"
      When the user deletes the "has prime image" relationship between "DTM" and "Tokyo Drift"
      Then the request should be rejected with status code 404
