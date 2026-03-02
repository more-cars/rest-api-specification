@REQ_MCA-2755
Feature: Get MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2756
  Rule: The ›belongs-to-magazine‹ relationship is returned when the provided data is valid

    @TEST_MCA-2757 @implemented
    Scenario: Requesting the ›belongs-to-magazine‹ relationship when one exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "belongs to magazine" relationship "R" for "Sieger-Typen"
      When the user requests the "belongs to magazine" relationship for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
