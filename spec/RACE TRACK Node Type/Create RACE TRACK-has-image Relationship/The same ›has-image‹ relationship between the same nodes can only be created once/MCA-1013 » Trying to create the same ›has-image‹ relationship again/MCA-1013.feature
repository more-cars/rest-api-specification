@REQ_MCA-1005
Feature: Create RACE TRACK-has-image Relationship

  @RULE_MCA-1012
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1013 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "start-finish-line"
      And there exists a "has image" relationship between "Hockenheimring" and "start-finish-line"
      When the user creates a "has image" relationship between "Hockenheimring" and "start-finish-line"
      Then the response should return with status code 304
