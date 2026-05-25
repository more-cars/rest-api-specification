@REQ_MCA-6088
Feature: Create CAR MODEL VARIANT-is-covered-by-book Relationship

  @RULE_MCA-6095
  Rule: The same ›is-covered-by-book‹ relationship between the same nodes can only be created once

    @TEST_MCA-6096 @implemented
    Scenario: Trying to create the same ›is-covered-by-book‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exists a "BOOK" "F1 in Numbers"
      And there exists a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      When the user creates a "is covered by book" relationship between "Ferrari SF-25" and "F1 in Numbers"
      Then the response should return with status code 304
