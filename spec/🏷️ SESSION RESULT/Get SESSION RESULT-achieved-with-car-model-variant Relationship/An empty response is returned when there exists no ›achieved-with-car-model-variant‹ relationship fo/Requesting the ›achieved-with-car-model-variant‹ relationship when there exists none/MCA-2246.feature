@REQ_MCA-2242
Feature: Get SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2245
  Rule: An empty response is returned when there exists no ›achieved-with-car-model-variant‹ relationship for the given SESSION RESULT

    @TEST_MCA-2246 @implemented
    Scenario: Requesting the ›achieved-with-car-model-variant‹ relationship when there exists none
      Given there exists a "SESSION RESULT" "1st place"
      And there exists NO "achieved with car model variant" relationship for "1st place"
      When the user requests the "achieved with car model variant" relationship for "1st place"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
