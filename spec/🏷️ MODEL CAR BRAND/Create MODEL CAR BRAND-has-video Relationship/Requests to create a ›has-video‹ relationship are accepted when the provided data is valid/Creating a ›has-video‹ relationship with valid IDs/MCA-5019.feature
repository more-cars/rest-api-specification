@REQ_MCA-5017
Feature: Create MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR BRAND
  So an API consumer can illustrate the MODEL CAR BRAND node in a frontend application

  @RULE_MCA-5018
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5019
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
