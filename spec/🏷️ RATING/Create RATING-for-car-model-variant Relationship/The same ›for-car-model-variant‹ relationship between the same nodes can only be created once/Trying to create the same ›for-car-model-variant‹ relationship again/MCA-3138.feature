@REQ_MCA-3130
Feature: Create RATING-for-car-model-variant Relationship

  @RULE_MCA-3137
  Rule: The same ›for-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-3138 @implemented
    Scenario: Trying to create the same ›for-car-model-variant‹ relationship again
      Given there exists a "RATING" "93 Percent"
      And there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      When the user creates a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      Then the response should return with status code 304
