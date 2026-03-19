@REQ_MCA-4123
Feature: Create PRICE-has-prime-image Relationship

  @RULE_MCA-4132
  Rule: At the same time, each PRICE can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-4133
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Price tag"
      And there exists a "IMAGE" "Price tag (Alternative)"
      When the user creates a "has prime image" relationship between "Brand New" and "Price tag"
      Then there should exist a "has prime image" relationship between "Brand New" and "Price tag"
      When the user creates a "has prime image" relationship between "Brand New" and "Price tag (Alternative)"
      Then there should exist a "has prime image" relationship between "Brand New" and "Price tag (Alternative)"
      But there should exist NO "has prime image" relationship between "Brand New" and "Price tag"
