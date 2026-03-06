@REQ_MCA-3157
Feature: Create RATING-has-image Relationship

  @RULE_MCA-3158
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3159 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      When the user creates a "has image" relationship between "93 Percent" and "Top Rating"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
