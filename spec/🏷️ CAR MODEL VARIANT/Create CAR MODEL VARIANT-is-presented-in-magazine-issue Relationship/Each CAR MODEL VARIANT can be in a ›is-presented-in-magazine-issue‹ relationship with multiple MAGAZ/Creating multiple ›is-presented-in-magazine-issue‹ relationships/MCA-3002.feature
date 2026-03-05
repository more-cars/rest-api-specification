@REQ_MCA-2992
Feature: Create CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship

  @RULE_MCA-3001
  Rule: Each CAR MODEL VARIANT can be in a ›is-presented-in-magazine-issue‹ relationship with multiple MAGAZINE ISSUES

    @TEST_MCA-3002 @implemented
    Scenario: Creating multiple ›is-presented-in-magazine-issue‹ relationships
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "MAGAZINE ISSUE" "Best Supercars 2025 (Alternative)"
      When the user creates a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      And the user creates a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025 (Alternative)"
      Then there should exist a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      And there should exist a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025 (Alternative)"
