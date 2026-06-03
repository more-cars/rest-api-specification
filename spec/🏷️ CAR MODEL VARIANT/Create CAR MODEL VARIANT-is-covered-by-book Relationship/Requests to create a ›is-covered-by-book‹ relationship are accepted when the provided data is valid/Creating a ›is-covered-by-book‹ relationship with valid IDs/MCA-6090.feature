@REQ_MCA-6088
Feature: Create CAR MODEL VARIANT-is-covered-by-book Relationship

  @RULE_MCA-6089
  Rule: Requests to create a ›is-covered-by-book‹ relationship are accepted when the provided data is valid

    @TEST_MCA-6090 @implemented
    Scenario: Creating a ›is-covered-by-book‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exists a "BOOK" "F1 in Numbers"
      When the user creates a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      Then the request should be confirmed with status code 204
