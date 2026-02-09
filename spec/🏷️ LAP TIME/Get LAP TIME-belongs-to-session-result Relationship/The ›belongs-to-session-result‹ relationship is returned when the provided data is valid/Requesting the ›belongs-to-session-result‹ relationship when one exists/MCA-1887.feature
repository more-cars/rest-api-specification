@REQ_MCA-1885
Feature: Get LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1886
  Rule: The ›belongs-to-session-result‹ relationship is returned when the provided data is valid

    @TEST_MCA-1887 @implemented
    Scenario: Requesting the ›belongs-to-session-result‹ relationship when one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "belongs to session result" relationship "R" for "fastest lap"
      When the user requests the "belongs to session result" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
