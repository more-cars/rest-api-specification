@REQ_MCA-3114
Feature: Get RATING-by-magazine-issue Relationship

  @RULE_MCA-3117
  Rule: An empty response is returned when there exists no ›by-magazine-issue‹ relationship for the given RATING

    @TEST_MCA-3118 @implemented
    Scenario: Requesting the ›by-magazine-issue‹ relationship when there exists none
      Given there exists a "RATING" "93 Percent"
      And there exists NO "by magazine issue" relationship for "93 Percent"
      When the user requests the "by magazine issue" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
