@REQ_MCA-1648
Feature: Create RACING SESSION-has-image Relationship

  @RULE_MCA-1657
  Rule: Each RACING SESSION can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1658 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      And there exists a "IMAGE" "starting grid (Alternative)"
      When the user creates a "has image" relationship between "Grand Prix" and "starting grid"
      And the user creates a "has image" relationship between "Grand Prix" and "starting grid (Alternative)"
      Then there should exist a "has image" relationship between "Grand Prix" and "starting grid"
      And there should exist a "has image" relationship between "Grand Prix" and "starting grid (Alternative)"
