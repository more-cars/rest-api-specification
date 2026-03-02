@REQ_MCA-2744
Feature: Create MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2753
  Rule: At the same time, each MAGAZINE ISSUE can only be in a ›belongs-to-magazine‹ relationship with one MAGAZINE

    @TEST_MCA-2754 @implemented
    Scenario: Creating a ›belongs-to-magazine‹ relationship with a different MAGAZINE
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "MAGAZINE" "Classic Cars"
      And there exists a "MAGAZINE" "Classic Cars (Alternative)"
      When the user creates a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      Then there should exist a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      When the user creates a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars (Alternative)"
      Then there should exist a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars (Alternative)"
      But there should exist NO "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
