@REQ_MCA-3421
Feature: Get PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3424
  Rule: An empty response is returned when there exists no ›belongs-to-programme‹ relationship for the given PROGRAMME EPISODE

    @TEST_MCA-3425 @implemented
    Scenario: Requesting the ›belongs-to-programme‹ relationship when there exists none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists NO "belongs to programme" relationship for "The Holy Trinity"
      When the user requests the "belongs to programme" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
