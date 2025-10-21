@REQ_MCA-1005
Feature: Create RACE TRACK-has-image Relationship

  @RULE_MCA-1014
  Rule: Each RACE TRACK can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1015 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "start-finish-line"
      And there exists a "IMAGE" "start-finish-line (Alternative)"
      When the user creates a "has image" relationship between "Hockenheimring" and "start-finish-line"
      And the user creates a "has image" relationship between "Hockenheimring" and "start-finish-line (Alternative)"
      Then there should exist a "has image" relationship between "Hockenheimring" and "start-finish-line"
      And there should exist a "has image" relationship between "Hockenheimring" and "start-finish-line (Alternative)"
