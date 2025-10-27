@REQ_MCA-1086
Feature: Create TRACK LAYOUT-has-image Relationship

  @RULE_MCA-1095
  Rule: Each TRACK LAYOUT can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1096 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "circuit map"
      And there exists a "IMAGE" "circuit map (Alternative)"
      When the user creates a "has image" relationship between "GP Circuit" and "circuit map"
      And the user creates a "has image" relationship between "GP Circuit" and "circuit map (Alternative)"
      Then there should exist a "has image" relationship between "GP Circuit" and "circuit map"
      And there should exist a "has image" relationship between "GP Circuit" and "circuit map (Alternative)"
