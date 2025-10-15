@REQ_MCA-179
Feature: Create CAR MODEL-belongs-to-brand Relationship
  As an API contributor\
  I want to be able to connect a BRAND to CAR MODELs\
  So I can create car families

  @RULE_MCA-86
  Rule: A CAR MODEL can belong to max. one BRAND

    @TEST_MCA-122 @deactivated @implemented
    Scenario: Connecting different BRANDs to the same CAR MODEL
      Given there exists a "CAR MODEL" "Veyron"
      And there exists a "BRAND" "Chevrolet"
      And there exists a "BRAND" "Bugatti"
      When the user creates a "belongs to brand" relationship between "Veyron" and "Chevrolet"
      Then there should exist a "belongs to brand" relationship between "Veyron" and "Chevrolet"
      When the user creates a "belongs to brand" relationship between "Veyron" and "Bugatti"
      Then there should exist a "belongs to brand" relationship between "Veyron" and "Bugatti"
      And there should exist NO "belongs to brand" relationship between "Veyron" and "Chevrolet"
