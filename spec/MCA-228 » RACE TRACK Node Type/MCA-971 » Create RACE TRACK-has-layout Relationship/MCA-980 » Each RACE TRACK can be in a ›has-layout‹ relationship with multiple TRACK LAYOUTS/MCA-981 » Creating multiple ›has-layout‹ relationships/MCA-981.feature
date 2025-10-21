@REQ_MCA-971
Feature: Create RACE TRACK-has-layout Relationship

  @RULE_MCA-980
  Rule: Each RACE TRACK can be in a ›has-layout‹ relationship with multiple TRACK LAYOUTS

    @TEST_MCA-981 @implemented
    Scenario: Creating multiple ›has-layout‹ relationships
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "TRACK LAYOUT" "GP Circuit (Alternative)"
      When the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      And the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit (Alternative)"
      Then there should exist a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      And there should exist a "has layout" relationship between "Hockenheimring" and "GP Circuit (Alternative)"
