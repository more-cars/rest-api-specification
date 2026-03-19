@REQ_MCA-4096
Feature: Create PRICE-has-image Relationship

  @RULE_MCA-4105
  Rule: Each PRICE can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-4106
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Price tag"
      And there exists a "IMAGE" "Price tag (Alternative)"
      When the user creates a "has image" relationship between "Brand New" and "Price tag"
      And the user creates a "has image" relationship between "Brand New" and "Price tag (Alternative)"
      Then there should exist a "has image" relationship between "Brand New" and "Price tag"
      And there should exist a "has image" relationship between "Brand New" and "Price tag (Alternative)"
