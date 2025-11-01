@REQ_MCA-2123
Feature: Create CAR MODEL VARIANT-achieved-lap-time Relationship

  @RULE_MCA-2124
  Rule: Requests to create a ›achieved-lap-time‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2125 @implemented
    Scenario: Creating a ›achieved-lap-time‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "LAP TIME" "fastest lap"
      When the user creates a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
