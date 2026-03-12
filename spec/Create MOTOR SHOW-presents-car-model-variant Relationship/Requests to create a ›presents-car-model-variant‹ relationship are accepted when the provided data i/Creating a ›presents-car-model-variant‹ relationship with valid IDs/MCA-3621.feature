@REQ_MCA-3619
Feature: Create MOTOR SHOW-presents-car-model-variant Relationship

  @RULE_MCA-3620
  Rule: Requests to create a ›presents-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3621 @implemented
    Scenario: Creating a ›presents-car-model-variant‹ relationship with valid IDs
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "CAR MODEL VARIANT" "BMW M760Li"
      When the user creates a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
