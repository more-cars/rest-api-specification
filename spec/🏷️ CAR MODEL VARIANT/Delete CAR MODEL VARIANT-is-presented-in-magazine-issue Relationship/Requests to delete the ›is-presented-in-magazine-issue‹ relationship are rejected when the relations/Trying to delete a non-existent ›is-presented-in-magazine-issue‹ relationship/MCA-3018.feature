@REQ_MCA-3010
Feature: Delete CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3017
  Rule: Requests to delete the ›is-presented-in-magazine-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3018 @implemented
    Scenario: Trying to delete a non-existent ›is-presented-in-magazine-issue‹ relationship
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "MAGAZINE ISSUE" "EV Today 2_2025"
      And there exists NO "is presented in magazine issue" relationship between "McLaren 750S" and "EV Today 2_2025"
      When the user deletes the "is presented in magazine issue" relationship between "McLaren 750S" and "EV Today 2_2025"
      Then the request should be rejected with status code 404
