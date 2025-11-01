@REQ_MCA-2177
Feature: Create CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2184
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2185 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 front-left"
      And there exists a "has prime image" relationship between "BMW M3" and "M3 front-left"
      When the user creates a "has prime image" relationship between "BMW M3" and "M3 front-left"
      Then the response should return with status code 304
