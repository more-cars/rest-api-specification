@REQ_MCA-3366
Feature: Create PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3375
  Rule: At the same time, each PROGRAMME can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-3376
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "IMAGE" "TGT logo (Alternative)"
      When the user creates a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      Then there should exist a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      When the user creates a "has prime image" relationship between "The Grand Tour" and "TGT logo (Alternative)"
      Then there should exist a "has prime image" relationship between "The Grand Tour" and "TGT logo (Alternative)"
      But there should exist NO "has prime image" relationship between "The Grand Tour" and "TGT logo"
