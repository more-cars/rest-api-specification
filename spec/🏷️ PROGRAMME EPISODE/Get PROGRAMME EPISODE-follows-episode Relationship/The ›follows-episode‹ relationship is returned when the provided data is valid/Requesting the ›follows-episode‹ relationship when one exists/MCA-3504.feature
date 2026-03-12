@REQ_MCA-3502
Feature: Get PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3503
  Rule: The ›follows-episode‹ relationship is returned when the provided data is valid

    @TEST_MCA-3504 @implemented
    Scenario: Requesting the ›follows-episode‹ relationship when one exists
      Given there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      And there exists a "follows episode" relationship "R" for "Funeral for a Ford"
      When the user requests the "follows episode" relationship for "Funeral for a Ford"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
