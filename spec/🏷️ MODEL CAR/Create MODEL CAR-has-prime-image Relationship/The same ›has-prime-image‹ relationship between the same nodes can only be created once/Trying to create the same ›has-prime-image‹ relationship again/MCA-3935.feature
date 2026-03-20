@REQ_MCA-3927
Feature: Create MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3934
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3935 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      And there exists a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      When the user creates a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the response should return with status code 304
