@REQ_MCA-2857
Feature: Create MAGAZINE ISSUE-presents-car-model-variant Relationship

  @RULE_MCA-2864
  Rule: The same ›presents-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-2865
    Scenario: Trying to create the same ›presents-car-model-variant‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      When the user creates a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      Then the response should return with status code 304
