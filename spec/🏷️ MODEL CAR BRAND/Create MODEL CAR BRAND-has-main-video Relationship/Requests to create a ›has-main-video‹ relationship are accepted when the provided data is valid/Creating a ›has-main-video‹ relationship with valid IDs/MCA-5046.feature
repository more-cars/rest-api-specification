@REQ_MCA-5044
Feature: Create MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR BRAND
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5045
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5046
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
