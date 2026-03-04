@REQ_MCA-3010
Feature: Delete CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3011
  Rule: The ›is-presented-in-magazine-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3012
    Scenario: Deleting the ›is-presented-in-magazine-issue‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "MAGAZINE ISSUE" "EV Today 2_2025"
      And there exists a "is presented in magazine issue" relationship "R" between "McLaren 750S" and "EV Today 2_2025"
      When the user deletes the "is presented in magazine issue" relationship between "McLaren 750S" and "EV Today 2_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
