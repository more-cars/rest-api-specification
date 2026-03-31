@REQ_MCA-4455
Feature: Create CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL VARIANT
  So an API consumer can illustrate the CAR MODEL VARIANT node in a frontend application

  @RULE_MCA-4456
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4457
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
