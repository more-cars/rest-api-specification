@REQ_MCA-3464
Feature: Create PROGRAMME EPISODE-features-car-model-variant Relationship

  @RULE_MCA-3465
  Rule: Requests to create a ›features-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3466
    Scenario: Creating a ›features-car-model-variant‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL VARIANT" "Ferrari LaFerrari"
      When the user creates a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
