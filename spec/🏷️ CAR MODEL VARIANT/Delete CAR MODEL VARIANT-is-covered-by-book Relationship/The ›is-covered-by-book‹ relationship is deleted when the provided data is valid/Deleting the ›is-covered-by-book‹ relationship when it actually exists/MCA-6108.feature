@REQ_MCA-6106
Feature: Delete CAR MODEL VARIANT-is-covered-by-book Relationship
  As an API contributor
  I want to be able to disconnect BOOKS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-6107
  Rule: The ›is-covered-by-book‹ relationship is deleted when the provided data is valid

    @TEST_MCA-6108 @implemented
    Scenario: Deleting the ›is-covered-by-book‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "Toyota Corolla"
      And there exists a "BOOK" "F1 in Numbers"
      And there exists a "is covered by book" relationship "R" between "Toyota Corolla" and "F1 in Numbers"
      When the user deletes the "is covered by book" relationship between "Toyota Corolla" and "F1 in Numbers"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
