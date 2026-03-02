@REQ_MCA-2737
Feature: Hard Delete MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to delete a MAGAZINE ISSUE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2742
  Rule: Hard-deleting a MAGAZINE ISSUE permanently deletes all attached relationships

    @TEST_MCA-2743 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "has image" relationship "R1" for "Sieger-Typen"
      And there exists a "has prime image" relationship "R2" for "Sieger-Typen"
      When the user hard-deletes the "MAGAZINE ISSUE" "Sieger-Typen"
      Then the "MAGAZINE ISSUE" "Sieger-Typen" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
