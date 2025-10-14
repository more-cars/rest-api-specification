@REQ_MCA-785
Feature: Delete BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-792
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-793 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "Ferrari logo"
      And there exists NO "has prime image" relationship between "Bugatti" and "Ferrari logo"
      When the user deletes the "has prime image" relationship between "Bugatti" and "Ferrari logo"
      Then the request should be rejected with status code 404
