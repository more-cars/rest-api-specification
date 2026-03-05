@REQ_MCA-2902
Feature: Delete MAGAZINE ISSUE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2909
  Rule: Requests to delete the ›covers-car-model‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2910 @implemented
    Scenario: Trying to delete a non-existent ›covers-car-model‹ relationship
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "CAR MODEL" "Twingo"
      And there exists NO "covers car model" relationship between "50 Jahre GTI" and "Twingo"
      When the user deletes the "covers car model" relationship between "50 Jahre GTI" and "Twingo"
      Then the request should be rejected with status code 404
