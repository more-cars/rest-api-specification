@REQ_MCA-675
Feature: Delete COMPANY-has-brand Relationship
  As an API contributor\
  I want to be able to disconnect BRANDS from COMPANIES\
  So I can clean up bad data or test data

  @RULE_MCA-682
  Rule: Requests to delete the ›has-brand‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-683
    Scenario: Trying to delete a non-existent ›has-brand‹ relationship
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "BRAND" "Toyota"
      And there exists NO "has-brand" relationship between "BMW AG" and "Toyota"
      When the user deletes the "has-brand" relationship between "BMW AG" and "Toyota"
      Then the request should be rejected with status code 404
