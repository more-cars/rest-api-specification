@REQ_MCA-3572
Feature: Create PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3581
  Rule: At the same time, each PROGRAMME EPISODE can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-3582
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "IMAGE" "TGT logo (Alternative)"
      When the user creates a "has prime image" relationship between "The Holy Trinity" and "TGT logo"
      Then there should exist a "has prime image" relationship between "The Holy Trinity" and "TGT logo"
      When the user creates a "has prime image" relationship between "The Holy Trinity" and "TGT logo (Alternative)"
      Then there should exist a "has prime image" relationship between "The Holy Trinity" and "TGT logo (Alternative)"
      But there should exist NO "has prime image" relationship between "The Holy Trinity" and "TGT logo"
