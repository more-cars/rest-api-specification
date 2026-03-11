@REQ_MCA-3545
Feature: Create PROGRAMME EPISODE-has-image Relationship

  @RULE_MCA-3554
  Rule: Each PROGRAMME EPISODE can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-3555
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "IMAGE" "TGT logo (Alternative)"
      When the user creates a "has image" relationship between "The Holy Trinity" and "TGT logo"
      And the user creates a "has image" relationship between "The Holy Trinity" and "TGT logo (Alternative)"
      Then there should exist a "has image" relationship between "The Holy Trinity" and "TGT logo"
      And there should exist a "has image" relationship between "The Holy Trinity" and "TGT logo (Alternative)"
