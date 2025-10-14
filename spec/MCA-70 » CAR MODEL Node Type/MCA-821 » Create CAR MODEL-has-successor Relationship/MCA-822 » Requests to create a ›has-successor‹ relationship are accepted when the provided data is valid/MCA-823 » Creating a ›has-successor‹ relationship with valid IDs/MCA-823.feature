@REQ_MCA-821
Feature: Create CAR MODEL-has-successor Relationship

  @RULE_MCA-822
  Rule: Requests to create a ›has-successor‹ relationship are accepted when the provided data is valid

    @TEST_MCA-823 @implemented
    Scenario: Creating a ›has-successor‹ relationship with valid IDs
      Given there exists a "CAR MODEL" "Countach"
      And there exists a "CAR MODEL" "Diablo"
      When the user creates a "has successor" relationship between "Countach" and "Diablo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
