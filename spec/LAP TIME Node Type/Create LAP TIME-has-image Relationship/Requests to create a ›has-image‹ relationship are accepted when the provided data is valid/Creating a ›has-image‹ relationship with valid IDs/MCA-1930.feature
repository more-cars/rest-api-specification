@REQ_MCA-1928
Feature: Create LAP TIME-has-image Relationship

  @RULE_MCA-1929
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1930
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      When the user creates a "has image" relationship between "fastest lap" and "track record"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
