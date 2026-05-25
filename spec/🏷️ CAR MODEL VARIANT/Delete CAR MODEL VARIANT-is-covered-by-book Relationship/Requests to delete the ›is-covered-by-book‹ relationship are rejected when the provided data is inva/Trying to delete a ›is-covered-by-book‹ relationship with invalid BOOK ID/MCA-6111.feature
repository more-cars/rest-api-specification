@REQ_MCA-6106
Feature: Delete CAR MODEL VARIANT-is-covered-by-book Relationship
  As an API contributor
  I want to be able to disconnect BOOKS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-6109
  Rule: Requests to delete the ›is-covered-by-book‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6111 @implemented
    Scenario: Trying to delete a ›is-covered-by-book‹ relationship with invalid BOOK ID
      Given there exists a "CAR MODEL VARIANT" "Toyota Corolla"
      And "BOOK" "F1 in Numbers" does NOT exist
      When the user deletes the "is covered by book" relationship between "Toyota Corolla" and "F1 in Numbers"
      Then the request should be rejected with status code 404
