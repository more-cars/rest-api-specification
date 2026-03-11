@REQ_MCA-3529
Feature: Get PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3532
  Rule: An empty response is returned when there exists no ›is-followed-by-episode‹ relationship for the given PROGRAMME EPISODE

    @TEST_MCA-3533
    Scenario: Requesting the ›is-followed-by-episode‹ relationship when there exists none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists NO "is followed by episode" relationship for "The Holy Trinity"
      When the user requests the "is followed by episode" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
