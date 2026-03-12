@REQ_MCA-3700
Feature: Create CAR MODEL VARIANT-presented-at-motor-show Relationship

  @RULE_MCA-3707
  Rule: The same ›presented-at-motor-show‹ relationship between the same nodes can only be created once

    @TEST_MCA-3708 @implemented
    Scenario: Trying to create the same ›presented-at-motor-show‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      When the user creates a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      Then the response should return with status code 304
