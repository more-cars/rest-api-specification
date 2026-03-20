@REQ_MCA-4025
Feature: Create MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4032
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-4033 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      And there exists a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      When the user creates a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the response should return with status code 304
