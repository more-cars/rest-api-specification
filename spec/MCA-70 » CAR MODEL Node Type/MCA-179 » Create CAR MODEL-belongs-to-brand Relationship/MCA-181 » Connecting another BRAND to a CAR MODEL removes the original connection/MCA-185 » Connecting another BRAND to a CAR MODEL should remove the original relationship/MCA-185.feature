@REQ_MCA-179
Feature: Create CAR MODEL-belongs-to-brand Relationship
  As an API contributor\
  I want to be able to connect a BRAND to CAR MODELs\
  So I can create car families

  @RULE_MCA-181
  Rule: Connecting another BRAND to a CAR MODEL removes the original connection

    @TEST_MCA-185 @implemented
    Scenario: Connecting another BRAND to a CAR MODEL should remove the original relationship
      Given there exists a "CAR MODEL" "Corolla"
      And there exists a "BRAND" "Ferrari"
      And there exists a "BRAND" "Toyota"
      And there exists a "belongs to brand" relationship between "Corolla" and "Ferrari"
      When the user creates a "belongs to brand" relationship between "Corolla" and "Toyota"
      Then there should exist NO "belongs to brand" relationship between "Corolla" and "Ferrari"
