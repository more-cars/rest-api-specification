@REQ_MCA-1229
Feature: Delete RACING SERIES-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1236
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1237 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "Formula 1 logo"
      And there exists NO "has image" relationship between "DTM" and "Formula 1 logo"
      When the user deletes the "has image" relationship between "DTM" and "Formula 1 logo"
      Then the request should be rejected with status code 404
