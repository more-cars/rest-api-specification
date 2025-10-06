@REQ_MCA-664
Feature: Create COMPANY-has-prime-image Relationship
  As an API contributor\
  I want to be able to select one image to be used as prime image for a COMPANY\
  So the node can be represented as good as possible in any frontend application

  @RULE_MCA-673
  Rule: At the same time, each COMPANY can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-674 @deactivated @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "COMPANY" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists a "IMAGE" "logo (Alternative)"
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then there should exist a "has-prime-image" relationship between "Bugatti" and "logo"
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo (Alternative)"
      Then there should exist a "has-prime-image" relationship between "Bugatti" and "logo (Alternative)"
      But there should exist NO "has-prime-image" relationship between "Bugatti" and "logo"
