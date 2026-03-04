@REQ_MCA-2857
Feature: Create MAGAZINE ISSUE-presents-car-model-variant Relationship

  @RULE_MCA-2858
  Rule: Requests to create a ›presents-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2859
    Scenario: Creating a ›presents-car-model-variant‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      When the user creates a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
