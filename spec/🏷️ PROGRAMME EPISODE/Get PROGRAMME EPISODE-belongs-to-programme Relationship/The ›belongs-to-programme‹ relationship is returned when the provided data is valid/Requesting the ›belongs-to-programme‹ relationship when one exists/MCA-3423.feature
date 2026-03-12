@REQ_MCA-3421
Feature: Get PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3422
  Rule: The ›belongs-to-programme‹ relationship is returned when the provided data is valid

    @TEST_MCA-3423 @implemented
    Scenario: Requesting the ›belongs-to-programme‹ relationship when one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "belongs to programme" relationship "R" for "The Holy Trinity"
      When the user requests the "belongs to programme" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
