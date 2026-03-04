@REQ_MCA-3019
Feature: Create RACING EVENT-covered-by-magazine-issue Relationship

  @RULE_MCA-3020
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3021
    Scenario: Creating a ›covered-by-magazine-issue‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exists a "MAGAZINE ISSUE" "F1 Season Start"
      When the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
