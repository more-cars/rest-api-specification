@REQ_MCA-684
Feature: Delete COMPANY-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-691
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-692
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "IMAGE" "ferrari logo"
      And there exists NO "has-prime-image" relationship between "BMW AG" and "ferrari logo"
      When the user deletes the "has-prime-image" relationship between "BMW AG" and "ferrari logo"
      Then the request should be rejected with status code 404
