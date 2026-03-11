@REQ_MCA-3437
Feature: Create PROGRAMME EPISODE-covers-car-model Relationship

  @RULE_MCA-3438
  Rule: Requests to create a ›covers-car-model‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3439
    Scenario: Creating a ›covers-car-model‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL" "LaFerrari"
      When the user creates a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
