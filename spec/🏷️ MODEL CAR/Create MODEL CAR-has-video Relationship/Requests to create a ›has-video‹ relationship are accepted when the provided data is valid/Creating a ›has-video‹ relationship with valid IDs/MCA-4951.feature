@REQ_MCA-4949
Feature: Create MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR
  So an API consumer can illustrate the MODEL CAR node in a frontend application

  @RULE_MCA-4950
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4951
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
