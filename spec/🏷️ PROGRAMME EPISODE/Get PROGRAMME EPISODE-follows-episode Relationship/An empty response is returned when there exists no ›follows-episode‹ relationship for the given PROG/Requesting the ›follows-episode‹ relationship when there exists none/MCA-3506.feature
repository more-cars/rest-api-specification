@REQ_MCA-3502
Feature: Get PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3505
  Rule: An empty response is returned when there exists no ›follows-episode‹ relationship for the given PROGRAMME EPISODE

    @TEST_MCA-3506 @implemented
    Scenario: Requesting the ›follows-episode‹ relationship when there exists none
      Given there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      And there exists NO "follows episode" relationship for "Funeral for a Ford"
      When the user requests the "follows episode" relationship for "Funeral for a Ford"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
