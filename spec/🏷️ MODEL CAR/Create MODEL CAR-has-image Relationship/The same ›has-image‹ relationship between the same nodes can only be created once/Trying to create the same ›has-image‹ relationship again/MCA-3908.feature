@REQ_MCA-3900
Feature: Create MODEL CAR-has-image Relationship

  @RULE_MCA-3907
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3908 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      And there exists a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      When the user creates a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the response should return with status code 304
