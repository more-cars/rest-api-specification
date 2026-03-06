@REQ_MCA-3211
Feature: Create CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship

  @RULE_MCA-3212
  Rule: Requests to create a ›reviewed-by-magazine-issue-with-rating‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3213 @implemented
    Scenario: Creating a ›reviewed-by-magazine-issue-with-rating‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "RATING" "93 Percent"
      When the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
