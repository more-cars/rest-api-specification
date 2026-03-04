@REQ_MCA-3046
Feature: Create CAR MODEL-covered-by-magazine-issue Relationship

  @RULE_MCA-3047
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3048
    Scenario: Creating a ›covered-by-magazine-issue‹ relationship with valid IDs
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      When the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
