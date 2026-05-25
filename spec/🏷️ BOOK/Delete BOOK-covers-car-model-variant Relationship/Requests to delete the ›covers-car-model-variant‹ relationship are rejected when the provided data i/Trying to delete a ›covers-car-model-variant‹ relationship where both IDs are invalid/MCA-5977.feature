@REQ_MCA-5971
Feature: Delete BOOK-covers-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-5974
  Rule: Requests to delete the ›covers-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5977 @implemented
    Scenario: Trying to delete a ›covers-car-model-variant‹ relationship where both IDs are invalid
      Given "BOOK" "F1 in Numbers" does NOT exist
      And "CAR MODEL VARIANT" "Toyota Corolla" does NOT exist
      When the user deletes the "covers car model variant" relationship between "F1 in Numbers" and "Toyota Corolla"
      Then the request should be rejected with status code 404
