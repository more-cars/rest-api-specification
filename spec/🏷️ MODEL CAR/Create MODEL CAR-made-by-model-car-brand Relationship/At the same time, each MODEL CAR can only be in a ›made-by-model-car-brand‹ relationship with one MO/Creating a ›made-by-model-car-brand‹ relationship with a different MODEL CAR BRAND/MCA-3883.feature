@REQ_MCA-3873
Feature: Create MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3882
  Rule: At the same time, each MODEL CAR can only be in a ›made-by-model-car-brand‹ relationship with one MODEL CAR BRAND

    @TEST_MCA-3883
    Scenario: Creating a ›made-by-model-car-brand‹ relationship with a different MODEL CAR BRAND
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "MODEL CAR BRAND" "Matchbox"
      And there exists a "MODEL CAR BRAND" "Matchbox (Alternative)"
      When the user creates a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      Then there should exist a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      When the user creates a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox (Alternative)"
      Then there should exist a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox (Alternative)"
      But there should exist NO "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
