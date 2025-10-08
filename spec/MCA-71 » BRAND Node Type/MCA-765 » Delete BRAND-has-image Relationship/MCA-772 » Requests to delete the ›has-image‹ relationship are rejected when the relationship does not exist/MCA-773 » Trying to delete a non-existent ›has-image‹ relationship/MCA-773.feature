@REQ_MCA-765
Feature: Delete BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-772
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-773
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists NO "has-image" relationship between "Bugatti" and "logo"
      When the user deletes the "has-image" relationship between "Bugatti" and "logo"
      Then the request should be rejected with status code 404
