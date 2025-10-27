@REQ_MCA-1444
Feature: Create RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1445
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1446 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "IMAGE" "Race Start"
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
