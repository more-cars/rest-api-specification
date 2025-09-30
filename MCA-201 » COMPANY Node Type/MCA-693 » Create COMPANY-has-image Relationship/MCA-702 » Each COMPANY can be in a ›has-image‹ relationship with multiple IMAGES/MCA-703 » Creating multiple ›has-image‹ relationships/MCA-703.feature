@REQ_MCA-693
Feature: Create COMPANY-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to COMPANIES\
  So an API consumer can illustrate COMPANY nodes in a frontend application

  @RULE_MCA-702
  Rule: Each COMPANY can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-703
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "COMPANY" "Audi AG"
      And there exists a "IMAGE" "logo"
      And there exists a "IMAGE" "logo (Alternative)"
      When the user creates a "has-image" relationship between "Audi AG" and "logo"
      And the user creates a "has-image" relationship between "Audi AG" and "logo (Alternative)"
      Then there should exist a "has-image" relationship between "Audi AG" and "logo"
      And there should exist a "has-image" relationship between "Audi AG" and "logo (Alternative)"
