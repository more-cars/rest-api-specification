@REQ_MCA-2771
Feature: Create MAGAZINE ISSUE-has-image Relationship

  @RULE_MCA-2780
  Rule: Each MAGAZINE ISSUE can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-2781 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "Cover"
      And there exists a "IMAGE" "Cover (Alternative)"
      When the user creates a "has image" relationship between "Sieger-Typen" and "Cover"
      And the user creates a "has image" relationship between "Sieger-Typen" and "Cover (Alternative)"
      Then there should exist a "has image" relationship between "Sieger-Typen" and "Cover"
      And there should exist a "has image" relationship between "Sieger-Typen" and "Cover (Alternative)"
