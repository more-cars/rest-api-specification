@REQ_MCA-5125
Feature: Create MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE ISSUE
  So an API consumer can illustrate the MAGAZINE ISSUE node in a frontend application

  @RULE_MCA-5126
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5127 @implemented
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
