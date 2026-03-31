@REQ_MCA-5287
Feature: Create MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MOTOR SHOW
  So an API consumer can illustrate the MOTOR SHOW node in a frontend application

  @RULE_MCA-5288
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5289
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
