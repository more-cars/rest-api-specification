@REQ_MCA-3619
Feature: Create MOTOR SHOW-presents-car-model-variant Relationship

  @RULE_MCA-3626
  Rule: The same ›presents-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-3627 @implemented
    Scenario: Trying to create the same ›presents-car-model-variant‹ relationship again
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "CAR MODEL VARIANT" "BMW M760Li"
      And there exists a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      When the user creates a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      Then the response should return with status code 304
