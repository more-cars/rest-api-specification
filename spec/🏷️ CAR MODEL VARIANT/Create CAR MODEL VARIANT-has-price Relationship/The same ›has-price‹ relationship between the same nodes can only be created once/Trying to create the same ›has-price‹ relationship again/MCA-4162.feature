@REQ_MCA-4154
Feature: Create CAR MODEL VARIANT-has-price Relationship

  @RULE_MCA-4161
  Rule: The same ›has-price‹ relationship between the same nodes can only be created once

    @TEST_MCA-4162 @implemented
    Scenario: Trying to create the same ›has-price‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "PRICE" "base price"
      And there exists a "has price" relationship between "BMW M3" and "base price"
      When the user creates a "has price" relationship between "BMW M3" and "base price"
      Then the response should return with status code 304
