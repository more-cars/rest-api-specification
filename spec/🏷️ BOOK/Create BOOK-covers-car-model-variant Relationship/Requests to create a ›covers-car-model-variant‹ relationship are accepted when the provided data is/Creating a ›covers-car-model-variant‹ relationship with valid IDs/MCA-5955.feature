@REQ_MCA-5953
Feature: Create BOOK-covers-car-model-variant Relationship

  @RULE_MCA-5954
  Rule: Requests to create a ›covers-car-model-variant‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5955 @implemented
    Scenario: Creating a ›covers-car-model-variant‹ relationship with valid IDs
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      When the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
