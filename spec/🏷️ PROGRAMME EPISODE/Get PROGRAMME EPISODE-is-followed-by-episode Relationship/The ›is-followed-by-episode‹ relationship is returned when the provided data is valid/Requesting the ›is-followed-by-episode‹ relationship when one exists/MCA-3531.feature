@REQ_MCA-3529
Feature: Get PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3530
  Rule: The ›is-followed-by-episode‹ relationship is returned when the provided data is valid

    @TEST_MCA-3531 @implemented
    Scenario: Requesting the ›is-followed-by-episode‹ relationship when one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "is followed by episode" relationship "R" for "The Holy Trinity"
      When the user requests the "is followed by episode" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
