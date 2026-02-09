@REQ_MCA-1928
Feature: Create LAP TIME-has-image Relationship

  @RULE_MCA-1937
  Rule: Each LAP TIME can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1938 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      And there exists a "IMAGE" "track record (Alternative)"
      When the user creates a "has image" relationship between "fastest lap" and "track record"
      And the user creates a "has image" relationship between "fastest lap" and "track record (Alternative)"
      Then there should exist a "has image" relationship between "fastest lap" and "track record"
      And there should exist a "has image" relationship between "fastest lap" and "track record (Alternative)"
