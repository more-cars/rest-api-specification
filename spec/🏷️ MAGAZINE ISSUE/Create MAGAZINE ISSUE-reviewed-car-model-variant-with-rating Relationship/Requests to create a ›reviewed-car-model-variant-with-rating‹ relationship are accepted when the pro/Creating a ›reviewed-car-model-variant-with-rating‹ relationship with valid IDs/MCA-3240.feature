@REQ_MCA-3238
Feature: Create MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship

  @RULE_MCA-3239
  Rule: Requests to create a ›reviewed-car-model-variant-with-rating‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3240 @implemented
    Scenario: Creating a ›reviewed-car-model-variant-with-rating‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "RATING" "93 Percent"
      When the user creates a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
