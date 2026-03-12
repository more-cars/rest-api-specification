@REQ_MCA-3646
Feature: Create MOTOR SHOW-has-image Relationship

  @RULE_MCA-3655
  Rule: Each MOTOR SHOW can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-3656 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "BMW Stand"
      And there exists a "IMAGE" "BMW Stand (Alternative)"
      When the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      And the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand (Alternative)"
      Then there should exist a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      And there should exist a "has image" relationship between "IAA Frankfurt" and "BMW Stand (Alternative)"
