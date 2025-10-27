@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-878
  Rule: Requests to create a ›is-successor-of‹ relationship are accepted when the provided data is valid

    @TEST_MCA-879 @implemented
    Scenario: Creating a ›is-successor-of‹ relationship with valid IDs
      Given there exists a "CAR MODEL" "Golf IV"
      And there exists a "CAR MODEL" "Golf III"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
