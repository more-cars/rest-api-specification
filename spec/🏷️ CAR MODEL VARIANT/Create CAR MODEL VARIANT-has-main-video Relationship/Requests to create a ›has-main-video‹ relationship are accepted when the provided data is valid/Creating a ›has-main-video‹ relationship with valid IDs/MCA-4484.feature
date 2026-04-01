@REQ_MCA-4482
Feature: Create CAR MODEL VARIANT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a CAR MODEL VARIANT
  So an API consumer can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4483
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4484 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
