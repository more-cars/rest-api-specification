@REQ_MCA-5953
Feature: Create BOOK-covers-car-model-variant Relationship

  @RULE_MCA-5956
  Rule: Requests to create a ›covers-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5958 @implemented
    Scenario: Trying to create a ›covers-car-model-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "BOOK" "F1 in Numbers"
      And "CAR MODEL VARIANT" "Ferrari SF-25" does NOT exist
      When the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      Then the request should be rejected with status code 404
