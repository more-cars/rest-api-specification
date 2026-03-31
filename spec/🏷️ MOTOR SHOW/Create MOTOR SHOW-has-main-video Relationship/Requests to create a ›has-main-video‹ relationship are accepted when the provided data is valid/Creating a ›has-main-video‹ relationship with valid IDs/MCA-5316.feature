@REQ_MCA-5314
Feature: Create MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MOTOR SHOW
  So an API consumer can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5315
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5316
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
