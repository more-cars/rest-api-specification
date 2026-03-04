@REQ_MCA-2992
Feature: Create CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship

  @RULE_MCA-2999
  Rule: The same ›is-presented-in-magazine-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-3000
    Scenario: Trying to create the same ›is-presented-in-magazine-issue‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      When the user creates a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      Then the response should return with status code 304
