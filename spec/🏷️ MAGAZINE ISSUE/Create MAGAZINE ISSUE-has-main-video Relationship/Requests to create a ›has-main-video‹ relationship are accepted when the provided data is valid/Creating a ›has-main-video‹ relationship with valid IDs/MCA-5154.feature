@REQ_MCA-5152
Feature: Create MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE ISSUE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5153
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5154 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
