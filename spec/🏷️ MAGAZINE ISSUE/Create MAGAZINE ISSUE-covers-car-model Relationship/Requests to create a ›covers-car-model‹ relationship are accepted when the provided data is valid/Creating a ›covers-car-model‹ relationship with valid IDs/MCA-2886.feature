@REQ_MCA-2884
Feature: Create MAGAZINE ISSUE-covers-car-model Relationship

  @RULE_MCA-2885
  Rule: Requests to create a ›covers-car-model‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2886 @implemented
    Scenario: Creating a ›covers-car-model‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "CAR MODEL" "Golf"
      When the user creates a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
