@REQ_MCA-1032
Feature: Create RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1039
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1040 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "first-corner"
      And there exists a "has prime image" relationship between "Hockenheimring" and "first-corner"
      When the user creates a "has prime image" relationship between "Hockenheimring" and "first-corner"
      Then the response should return with status code 304
