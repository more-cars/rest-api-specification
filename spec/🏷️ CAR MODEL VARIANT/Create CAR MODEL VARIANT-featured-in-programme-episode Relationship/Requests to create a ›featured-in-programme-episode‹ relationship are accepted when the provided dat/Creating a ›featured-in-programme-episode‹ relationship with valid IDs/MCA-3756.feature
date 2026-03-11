@REQ_MCA-3754
Feature: Create CAR MODEL VARIANT-featured-in-programme-episode Relationship

  @RULE_MCA-3755
  Rule: Requests to create a ›featured-in-programme-episode‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3756
    Scenario: Creating a ›featured-in-programme-episode‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
