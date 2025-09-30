@REQ_MCA-711
Feature: Delete COMPANY-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-718
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-719
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "COMPANY" "Audi AG"
      And there exists a "IMAGE" "BMW logo"
      And there exists NO "has-image" relationship between "Audi AG" and "BMW logo"
      When the user deletes the "has-image" relationship between "Audi AG" and "BMW logo"
      Then the request should be rejected with status code 404
