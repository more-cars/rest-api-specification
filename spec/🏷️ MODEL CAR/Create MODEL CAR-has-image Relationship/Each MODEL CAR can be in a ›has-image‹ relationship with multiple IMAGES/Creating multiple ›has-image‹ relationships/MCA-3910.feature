@REQ_MCA-3900
Feature: Create MODEL CAR-has-image Relationship

  @RULE_MCA-3909
  Rule: Each MODEL CAR can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-3910
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      And there exists a "IMAGE" "F40 Matchbox photo (Alternative)"
      When the user creates a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      And the user creates a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo (Alternative)"
      Then there should exist a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      And there should exist a "has image" relationship between "F40 Scale Model" and "F40 Matchbox photo (Alternative)"
