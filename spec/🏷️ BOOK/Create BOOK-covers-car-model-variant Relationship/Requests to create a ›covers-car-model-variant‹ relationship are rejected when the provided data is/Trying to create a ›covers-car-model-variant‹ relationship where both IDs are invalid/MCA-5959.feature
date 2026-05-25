@REQ_MCA-5953
Feature: Create BOOK-covers-car-model-variant Relationship

  @RULE_MCA-5956
  Rule: Requests to create a ›covers-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5959 @implemented
    Scenario: Trying to create a ›covers-car-model-variant‹ relationship where both IDs are invalid
      Given "BOOK" "F1 in Numbers" does NOT exist
      And "CAR MODEL VARIANT" "Ferrari SF-25" does NOT exist
      When the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      Then the request should be rejected with status code 404
