@REQ_MCA-2269
Feature: Get LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2272
  Rule: An empty response is returned when there exists no ›achieved-with-car-model-variant‹ relationship for the given LAP TIME

    @TEST_MCA-2273 @implemented
    Scenario: Requesting the ›achieved-with-car-model-variant‹ relationship when there exists none
      Given there exists a "LAP TIME" "fastest lap"
      And there exists NO "achieved with car model variant" relationship for "fastest lap"
      When the user requests the "achieved with car model variant" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
