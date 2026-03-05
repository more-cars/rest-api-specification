@REQ_MCA-2992
Feature: Create CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship

  @RULE_MCA-2993
  Rule: Requests to create a ›is-presented-in-magazine-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2994 @implemented
    Scenario: Creating a ›is-presented-in-magazine-issue‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      When the user creates a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
