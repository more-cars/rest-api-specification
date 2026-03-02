@REQ_MCA-2755
Feature: Get MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2758
  Rule: An empty response is returned when there exists no ›belongs-to-magazine‹ relationship for the given MAGAZINE ISSUE

    @TEST_MCA-2759 @implemented
    Scenario: Requesting the ›belongs-to-magazine‹ relationship when there exists none
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists NO "belongs to magazine" relationship for "Sieger-Typen"
      When the user requests the "belongs to magazine" relationship for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
