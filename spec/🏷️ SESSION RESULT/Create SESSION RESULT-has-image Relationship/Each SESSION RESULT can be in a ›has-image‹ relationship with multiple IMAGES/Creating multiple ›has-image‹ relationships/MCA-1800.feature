@REQ_MCA-1790
Feature: Create SESSION RESULT-has-image Relationship

  @RULE_MCA-1799
  Rule: Each SESSION RESULT can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1800 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "podium"
      And there exists a "IMAGE" "podium (Alternative)"
      When the user creates a "has image" relationship between "1st place" and "podium"
      And the user creates a "has image" relationship between "1st place" and "podium (Alternative)"
      Then there should exist a "has image" relationship between "1st place" and "podium"
      And there should exist a "has image" relationship between "1st place" and "podium (Alternative)"
