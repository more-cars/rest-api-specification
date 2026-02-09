@REQ_MCA-1955
Feature: Create LAP TIME-has-prime-image Relationship

  @RULE_MCA-1956
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1957 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      When the user creates a "has prime image" relationship between "fastest lap" and "track record"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
