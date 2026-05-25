@REQ_MCA-6088
Feature: Create CAR MODEL VARIANT-is-covered-by-book Relationship

  @RULE_MCA-6091
  Rule: Requests to create a ›is-covered-by-book‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6093 @implemented
    Scenario: Trying to create a ›is-covered-by-book‹ relationship with invalid BOOK ID
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And "BOOK" "F1 in Numbers" does NOT exist
      When the user creates a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      Then the request should be rejected with status code 404
