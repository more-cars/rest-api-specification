@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2076
  Rule: The same ›is-variant-of‹ relationship between the same nodes can only be created once

    @TEST_MCA-2077 @implemented
    Scenario: Trying to create the same ›is-variant-of‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "CAR MODEL" "3-series"
      And there exists a "is variant of" relationship between "BMW M3" and "3-series"
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then the response should return with status code 304
