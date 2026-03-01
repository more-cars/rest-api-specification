@REQ_MCA-2762
Feature: Delete MAGAZINE ISSUE-belongs-to-magazine Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2763
  Rule: The ›belongs-to-magazine‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2764
    Scenario: Deleting the ›belongs-to-magazine‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "MAGAZINE" "Top Gear"
      And there exists a "belongs to magazine" relationship "R" between "Sieger-Typen" and "Top Gear"
      When the user deletes the "belongs to magazine" relationship between "Sieger-Typen" and "Top Gear"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
