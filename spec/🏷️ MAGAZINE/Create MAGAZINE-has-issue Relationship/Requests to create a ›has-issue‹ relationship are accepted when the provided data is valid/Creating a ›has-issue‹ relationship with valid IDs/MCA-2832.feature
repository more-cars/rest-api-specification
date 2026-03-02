@REQ_MCA-2830
Feature: Create MAGAZINE-has-issue Relationship

  @RULE_MCA-2831
  Rule: Requests to create a ›has-issue‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2832 @implemented
    Scenario: Creating a ›has-issue‹ relationship with valid IDs
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "MAGAZINE ISSUE" "Best Sportscars 2015"
      When the user creates a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
