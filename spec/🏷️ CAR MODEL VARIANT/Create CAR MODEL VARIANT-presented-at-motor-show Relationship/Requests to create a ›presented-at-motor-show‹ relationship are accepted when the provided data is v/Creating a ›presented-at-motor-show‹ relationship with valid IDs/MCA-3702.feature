@REQ_MCA-3700
Feature: Create CAR MODEL VARIANT-presented-at-motor-show Relationship

  @RULE_MCA-3701
  Rule: Requests to create a ›presented-at-motor-show‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3702
    Scenario: Creating a ›presented-at-motor-show‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user creates a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
