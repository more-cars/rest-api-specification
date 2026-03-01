@REQ_MCA-2744
Feature: Create MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2751
  Rule: The same ›belongs-to-magazine‹ relationship between the same nodes can only be created once

    @TEST_MCA-2752
    Scenario: Trying to create the same ›belongs-to-magazine‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "MAGAZINE" "Classic Cars"
      And there exists a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      When the user creates a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      Then the response should return with status code 304
