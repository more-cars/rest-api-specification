@REQ_MCA-3184
Feature: Create RATING-has-prime-image Relationship

  @RULE_MCA-3185
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3186 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      When the user creates a "has prime image" relationship between "93 Percent" and "Top Rating"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
