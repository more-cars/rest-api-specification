@REQ_MCA-834
Feature: Create BRAND-belongs-to-company Relationship

  @RULE_MCA-843
  Rule: At the same time, each BRAND can only be in a ›belongs-to-company‹ relationship with one COMPANY

    @TEST_MCA-844
    Scenario: Creating a ›belongs-to-company‹ relationship with a different COMPANY
      Given there exists a "BRAND" "Bentley"
      And there exists a "COMPANY" "VW AG"
      And there exists a "COMPANY" "VW AG (Alternative)"
      When the user creates a "belongs to company" relationship between "Bentley" and "VW AG"
      Then there should exist a "belongs to company" relationship between "Bentley" and "VW AG"
      When the user creates a "belongs to company" relationship between "Bentley" and "VW AG (Alternative)"
      Then there should exist a "belongs to company" relationship between "Bentley" and "VW AG (Alternative)"
      But there should exist NO "belongs to company" relationship between "Bentley" and "VW AG"
