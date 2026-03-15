@REQ_MCA-3630
Feature: Get all MOTOR SHOW-presents-car-model-variant Relationships

  @RULE_MCA-3633
  Rule: An empty list is returned when there exist no ›presents-car-model-variant‹ relationships for the given MOTOR SHOW

    @TEST_MCA-3634 @implemented
    Scenario: Requesting the ›presents-car-model-variant‹ relationships when there are none
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exist 0 "presents car model variant" relationships for "IAA Frankfurt"
      When the user requests all "presents car model variant" relationships for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
