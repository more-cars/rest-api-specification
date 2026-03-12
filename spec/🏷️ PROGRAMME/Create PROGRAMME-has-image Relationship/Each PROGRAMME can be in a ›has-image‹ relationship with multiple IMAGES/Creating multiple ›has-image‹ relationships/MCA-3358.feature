@REQ_MCA-3348
Feature: Create PROGRAMME-has-image Relationship

  @RULE_MCA-3357
  Rule: Each PROGRAMME can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-3358 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "IMAGE" "TGT logo (Alternative)"
      When the user creates a "has image" relationship between "The Grand Tour" and "TGT logo"
      And the user creates a "has image" relationship between "The Grand Tour" and "TGT logo (Alternative)"
      Then there should exist a "has image" relationship between "The Grand Tour" and "TGT logo"
      And there should exist a "has image" relationship between "The Grand Tour" and "TGT logo (Alternative)"
